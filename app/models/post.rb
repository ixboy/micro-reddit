class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true
end
