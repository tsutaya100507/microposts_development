class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }

  has_many :likes
  has_many :users, through: :likes, source: :user # source: :userは省略可
end
