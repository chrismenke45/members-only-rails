class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :description, presence: true, length: { maximum: 300 }
end
