class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    has_many :comments
    belongs_to :user
    has_one_attached :cover_picture
    validates :cover_picture, attached: true
end
