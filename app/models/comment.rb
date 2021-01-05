class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_associated :user,:post
  validates :name,:body ,presence: true,length:{in: 3..50}
end
