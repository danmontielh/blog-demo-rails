class User < ApplicationRecord
    has_many :posts
    has_many :comments

    has_secure_password

    validates :password, presence: true, length: {minimum: 5}
    validates :username, presence: true
end
