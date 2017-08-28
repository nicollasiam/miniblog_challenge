class Post < ApplicationRecord
  belongs_to :user
  # Kaminari will show 5 items per page
  paginates_per 5

  validates :title, presence: true
  validates :content, presence: true
end
