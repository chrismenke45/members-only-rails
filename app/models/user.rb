class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :password, presence: true, length: { in: 6..16 }
end
