class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end


    private

    def user_params
        params.require(:user).permit([:first_name, :last_name, :gamer_tag, :password_digest, :avatar_url, :location])
    end
end

# strong params is only for 'create', 'update', or 'delete'
# because it utilizes the form
