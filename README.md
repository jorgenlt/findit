<base target="_blank">

# Findit - An online classified web application

The app is live at [findit.herokuapp.com](http://findit.herokuapp.com/).

</br>
<div style="display: flex;">
  <img
    src="https://user-images.githubusercontent.com/108831121/225033204-8692b355-f112-4941-a6ba-d7e8ef87d3b9.png"
    width="600"
    height="auto">
</div>
</br>
</br>

## Features
- Sign up and sign in.
- Search for ads.
- Browse ads by categories and subcategories.
- View ads with pictures and information.
- Contact seller.
- Add a new ad.

</br>

## Technologies
MessageMate is built with [Ruby on Rails](https://rubyonrails.org/) on both backend and frontend. Data is stored in a PostgreSQL database and all pictures are uploaded to [Cloudinary](https://cloudinary.com/) and handled using [Active Storage integration](https://cloudinary.com/documentation/rails_activestorage). The [PgSearch](https://github.com/Casecommons/pg_search) gem are used for searching for posts. The application is additionally supported by Webpack, simple_form, stimulus and bootstrap.

</br>

## Technical challenges
### The search feature
The search feature on the dashboard page is made simple using the [PgSearch](https://github.com/Casecommons/pg_search) gem. The Post model includes the pg_search and specifies what to search against (title, body, category and subcategory).

```.rb
# app/models/post.rb

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :post_title, :post_body, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_posts,
    against: [ :post_title, :post_body, :category_name, :sub_category_name ],
      using: { tsearch: { prefix: true } }

  has_one_attached :photo
end
```

</br>

The Pages controller action 'dashboard' handles the search if a query is present.

</br>

```.rb
# app/controllers/pages_controller.rb

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dashboard ]

  def dashboard
    if params[:query].present?
      @search_results = Post.search_posts(params[:query])
    else
      @search_results = nil
    end
  end
end
```

</br>

If '@search_results' in the Pages controller is not nil the search results are displayed in the dashboard view.

</br>

```.html
<!-- app/views/pages/dashboard.html.erb -->

<div class="search-results w-100">
  <% unless @search_results == nil %>
    <% if @search_results.empty? %>
      <h3 class="no-results">No results for your search.</h3>
    <% else %>
      <h2><%= @search_results.size %> results found</h2>
      <div class="row all-posts">
        <% @search_results.each do |post| %>
            <div class="col all-posts-card">
              <%= link_to post_path(post), class: "all-posts-link" do %>
                <%= attached_photo(post, 400) %>
                <div class="post-details">
                  <p class="all-posts-location">Oslo</p>
                  <p class="all-posts-description"><%= post.post_title.capitalize %></p>
                  <span>€ <%= post.price %></span>
                </div>
              <% end %>
            </div>
        <% end %>
      </div>
    <% end %>
  <% end %>
</div>
```
</br>

### Populating categories and subcategories

When making a new post available subcategories to choose from should change with the category chosen. This was solved using javascript. The categories are populated when the site is loaded and the subcategories are populated when choosing a category. A stimulus controller handles the javascript code.

```.js
// app/javascript/controllers/new_post_controller.js

const data = [
  {
    category: 'Bicycles',
    subcategories: ["Electrical", "Hybrid", "Offroad", "Racer", "Other"]
  },
  {
    category: 'Electronics',
    subcategories: ["Computers", "Photo", "TV", "Household", "Smartphones"]
  },
  {
    category: 'Home',
    subcategories: ["Furniture", "Lamps", "Kitchen"]
  },
  {
    category: 'Pets',
    subcategories: ["Bird", "Cat", "Dog", "Fish", "Horse"]
  },
  {
    category: 'Sports',
    subcategories: ["Ballsport", "Golf", "Outdoors", "Winter", "Water"]
  },
  {
    category: 'Vehicles',
    subcategories: ["Car", "Motorcycle", "Truck"]
  },
  {
    category: 'Work',
    subcategories: ["Fulltime", "Parttime"]
  },
  {
    category: 'Boats',
    subcategories: ["Sailboat", "Speedboat", "Yacht"]
  }
];

// Connects to data-controller="new-post"
export default class extends Controller {

  static targets = ["category", "subcategory"]

  connect() {
    data.forEach(item => {
      const option = document.createElement('option');
      option.text = item.category;
      this.categoryTarget.add(option);
    });
  }

  changeSub(event) {
    const category = event.target.value;
    const selectedData = data.find(item => item.category === category);
    this.subcategoryTarget.innerHTML = '';
    selectedData.subcategories.forEach(subcategory => {
      const option = document.createElement('option');
      option.text = subcategory;
      this.subcategoryTarget.add(option);
    });
  }
}
```

</br>

## Upcoming features
- Edit and delete your own posts.
- Creating a user profile with a profile picture.
- Interactive map function on the post page.
- Live chat between users.
