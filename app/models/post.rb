class Post < ApplicationRecord
  has_many :comments

  validates :title, presence: true, length: { minimum: 3, maximum: 20, message: "length error !!" }
  validates :body, presence: true
end
