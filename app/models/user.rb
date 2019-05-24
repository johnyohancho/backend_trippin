class User < ApplicationRecord
    has_many :trips
    has_many :events, through: :trips
end
