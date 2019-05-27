class Event < ApplicationRecord
    belongs_to :trip, optional: true
    validates :name, presence: true
end
