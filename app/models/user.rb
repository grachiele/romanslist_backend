class User < ApplicationRecord
  validates :email,:first_name,:last_name,:password, presence: true
  has_secure_password
  has_many :posts


end
