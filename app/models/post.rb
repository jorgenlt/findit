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
