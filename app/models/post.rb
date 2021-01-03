class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 2..50, message: "Please change your title to contain betweeen 2 and 50 characters!"}
  validates :body, presence: true, length: { maximum: 2000, message: "Your Post is too long!" }

  belongs_to :user
  has_many :comments
end
