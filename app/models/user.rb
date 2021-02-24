class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, length: { in: 4..10 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*/,
                                                                message: 'Put a valid email' }
  validates :password, presence: true, length: { in: 6..10 }, confirmation: { case_sensitive: true }
end
