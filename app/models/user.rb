class User < ApplicationRecord
  validates :email, :first_name, :last_name, :password, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "That's not a valid email."}
  has_secure_password
  has_many :posts
end
