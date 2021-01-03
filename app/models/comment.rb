class Comment < ApplicationRecord
  validates :body, presence: true, length: { maximum: 500, message: "Your body has exceeded the character limit of 500!"}
  validates :user, presence: true
  validates :post, presence: true

  belongs_to :user
  belongs_to :post
end
