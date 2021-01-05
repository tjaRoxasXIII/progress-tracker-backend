class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, except: [:password_digest]
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: 'Error creating user account'}
        end
    end

    def show
        @user = User.find_by_id(params[:id])
        render json: @user, except: [:password_digest]
    end
    
    def edit
    end

    def update
    end

    def delete
        @user = User.find(params[:id])
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password_digest)
    end

end
