class Goal < ApplicationRecord
    belongs_to :user
    validates :title, :frequency, :start_date, :end_date, presence: true
    validates_inclusion_of :frequency, in => ['daily', 'weekly', 'bi-weekly', 'monthly', 'semi-annually', 'annually']
end
