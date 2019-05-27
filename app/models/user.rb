class User < ApplicationRecord
    has_secure_password

    has_many :trips
    has_many :events, through: :trips

    validates :email, { uniqueness: true }
end
