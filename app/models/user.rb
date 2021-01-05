class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    validates :name, presence: true

    has_many :goals
end
