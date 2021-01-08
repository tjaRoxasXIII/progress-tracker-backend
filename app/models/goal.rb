class Goal < ApplicationRecord
    belongs_to :user
    validates :title, :frequency, :start_date, :end_date, presence: true 

    def calculate_percent_completion

        case self.frequency

        when 'daily'
            (Date.new(self.end_date) - Date.new(self.start_date)).to_i
        when 'weekly'
            (Date.new(self.end_date) - Date.new(self.start_date)).to_i / 7
        when 'bi-weekly'
            (Date.new(self.end_date) - Date.new(self.start_date)).to_i / 14
        when 'monthly'
            (Date.new(self.end_date) - Date.new(self.start_date)).to_i / 30
        when 'semi-annually'
            (Date.new(self.end_date) - Date.new(self.start_date)).to_i / 182
        when 'annually'
            (Date.new(self.end_date) - Date.new(self.start_date)).to_i / 365
        end
    end
end

