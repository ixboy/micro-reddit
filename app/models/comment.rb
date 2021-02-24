class Comment < ApplicationRecord

  validates :body, presence: true, length: {maximum: 250}
  validates :user_id, presence: true
  validates :post_id, presence: true
end
