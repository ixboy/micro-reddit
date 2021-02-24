class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..10 }, uniqueness: true
end
