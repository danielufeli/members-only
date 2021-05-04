class Post < ApplicationRecord
  validates :post, presence: true
  validates :title, presence: true

  belongs_to :user
end
