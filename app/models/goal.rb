class Goal < ApplicationRecord
    belongs_to :user
    validates :title, :frequency, :is_complete, :start_date, :end_date, presence: true
end
