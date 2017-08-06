class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {maximum: 140}

  validates  :body, presence: true
end
