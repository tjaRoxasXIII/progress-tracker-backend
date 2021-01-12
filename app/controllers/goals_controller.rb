class GoalsController < ApplicationController
    skip_before_action :require_login
    def index
        @goals = User.find_by(id: params[:user_id]).goals
        render json: @goals
    end

    def create
        @user = User.find_by(id: params[:goal][:user_id])
        @goal = @user.goals.build(goal_params)
        @goal.is_complete = false
        if @goal.save
            render json: @goal
        end
    end

    private 

    def goal_params
        params.require(:goal).permit(:user_id, :title, :description, :frequency, :start_date, :end_date)
    end
end
