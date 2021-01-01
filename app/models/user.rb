class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..20, message: "Please choose a name between 6 and 20 characters!"}
  validates :email, uniqueness: true
end
