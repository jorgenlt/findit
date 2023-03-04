class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  include PgSearch::Model
  pg_search_scope :search_posts,
    against: [ :post_title, :post_body ],
      using: { tsearch: { prefix: true } }

  has_one_attached :photo
end
