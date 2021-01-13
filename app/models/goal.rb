class Goal < ApplicationRecord
    belongs_to :user

    def calculate_num_to_complete
        case self.frequency
        when "daily"
            (self.end_date - self.start_date).to_i
        when "weekly"
            (self.end_date - self.start_date).to_i / 7
        when "bi-weekly"
            (self.end_date - self.start_date).to_i / 14
        when "monthly"
            (self.end_date - self.start_date).to_i / 30
        when "quarterly"
            (self.end_date - self.start_date).to_i / 90
        when "semi-annually"
            (self.end_date - self.start_date).to_i / 180
        when "annually"
            (self.end_date - self.start_date).to_i / 360
        end
    end

end
