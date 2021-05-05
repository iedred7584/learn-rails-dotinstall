class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3, maximum: 20, message: "length error !!" }
  validates :body, presence: true
end
