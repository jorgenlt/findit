# syntax = docker/dockerfile:1

# Make sure it matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.1.2
FROM ruby:$RUBY_VERSION-slim as base

# Rails app lives here
WORKDIR /rails

# Set production environment
ENV RAILS_ENV="production" \
    BUNDLE_PATH="vendor/bundle" \
    BUNDLE_WITHOUT="development:test"

ARG BUNDLER_VERSION=2.3.25
RUN gem update --system --no-document && \
    gem install -N bundler -v ${BUNDLER_VERSION}


# Throw-away build stage to reduce size of final image
FROM base as build

# Install packages need to build gems and node modules
RUN apt-get update -qq && \
    apt-get install -y build-essential curl libpq-dev node-gyp pkg-config python-is-python3

# Install JavaScript dependencies
ARG NODE_VERSION=16.15.1
ARG YARN_VERSION=1.22.19
ENV VOLTA_HOME="/usr/local"
RUN curl https://get.volta.sh | bash && \
    volta install node@$NODE_VERSION yarn@$YARN_VERSION

# Install application gems
COPY Gemfile Gemfile.lock ./
RUN bundle _${BUNDLER_VERSION}_ install

# Install node modules
COPY package.json yarn.lock ./
RUN yarn install

# Copy application code
COPY . .

# Precompiling assets for production without requiring secret RAILS_MASTER_KEY
RUN SECRET_KEY_BASE=DUMMY ./bin/rails assets:precompile


# Final stage for app image
FROM base

# Install packages need for deployment
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y postgresql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Copy built application from second stage
COPY --from=build /rails /rails

# Deployment options
ENV RAILS_LOG_TO_STDOUT="1" \
    RAILS_SERVE_STATIC_FILES="true"

# Entrypoint prepares the database.
ENTRYPOINT ["/rails/bin/docker-entrypoint"]

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
CMD ["./bin/rails", "server"]