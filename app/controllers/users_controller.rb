class UsersController < ApplicationController

    def index
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def delete
    end

    def user_params
        params.require(:user).permit(:name, :email, :password_digest)
    end

end
