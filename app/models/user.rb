class User < ApplicationRecord
    has_secure_password
    has_many :recipes
    validates :name, :email, presence: true
    validates :email, uniqueness: true
end
