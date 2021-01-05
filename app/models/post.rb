class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :title, presence: true, length:{ in: 3..20, too_short: "too_short" }
    validates :body, length:{ maximum: 50 }
end
