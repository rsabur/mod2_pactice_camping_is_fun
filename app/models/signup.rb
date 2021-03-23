class Signup < ApplicationRecord
    belongs_to :activity
    belongs_to :camper

    validates :time, inclusion: {in: 0..23, message: 'The time must be between 0 and 23 hours'}
end
