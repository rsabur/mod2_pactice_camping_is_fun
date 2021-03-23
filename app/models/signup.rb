class Signup < ApplicationRecord
    belongs_to :activity
    belongs_to :camper

    validates :time, inclusion: {in: 0..24, message: 'The time must be between 0 and 24 hours'}
end
