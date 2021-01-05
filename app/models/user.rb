class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { in: 3..10 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { in: 6..12 }
end
