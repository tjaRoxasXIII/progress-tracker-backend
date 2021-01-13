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
        @goal.num_to_complete = @goal.calculate_num_to_complete
        @goal.num_of_completed = 0
        if @goal.save
            render json: @goal
        end
    end

    #Each time a user clicks 'complete a task', this route is POSTed to and then value increases by 1
    def add_to_goal
        @user = User.find_by(id: params[:goal][:user_id])
        @goal = @user.goals.find_by(id: params[:goal][:id])
        @goal.num_of_completed += 1
        if @goal.num_of_completed <= @goal.num_to_complete
            if @goal.num_of_completed == @goal.num_to_complete
                @goal.is_complete = true
            end
            @goal.save
        end
    end

    private 

    def goal_params
        params.require(:goal).permit(:id, :user_id, :title, :description, :frequency, :start_date, :end_date)
    end
end
