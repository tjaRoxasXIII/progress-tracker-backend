class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :precent_complete, :is_complete, :start_date, :end_date
end
