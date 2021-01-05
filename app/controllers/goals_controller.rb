class GoalsController < ApplicationController

    # before_action :set_user

    def index
        @user = User.find(params[:user_id])
        render json: @user.goals
    end

    def create
        @goal = Account.new(goal_params)
        if @goal.save
            render json: @goal
        else
            render json: {error: 'Error creating goal'}
    end

    def show
        @goal = Goal.find(params[:id])
        render json: @goal
    end

    def edit
    end

    def update
    end

    def delete
        @goal = Goal.find(params[:id])
        @goal.destroy
    end

    private

        def set_user
            @user = User.find(params[:user_id])
        end

        def goal_params
            params.require(:goal).permit(:title, :description, :frequency, :start_date, :end_date)
        end

    end
end
