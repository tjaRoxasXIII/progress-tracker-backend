class GoalsController < ApplicationController
    skip_before_action :require_login
    def index
        @goals = User.find_by(id: params[:user_id]).goals
        render json: @goals
    end
end
