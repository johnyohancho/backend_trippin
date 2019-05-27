class Trip < ApplicationRecord
    has_many :events
    belongs_to :user, optional: true
    validates :name, presence: true
end
