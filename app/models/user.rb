class User < ApplicationRecord
    has_secure_password
    has_many :goals
    validates :email, uniqueness: true
end
