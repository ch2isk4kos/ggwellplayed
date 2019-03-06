class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    ###### SIGNUP ######
    def new
        @user = User.new
        # debugger
    end

    def create
        @user = User.create(user_params)
        # byebug
        if @user.valid?
            redirect_to user_path(@user)
        else
            # flash[:message] = @user.errors.full_messages
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path
    end

    private

    def user_params
        params.require(:user).permit([:username, :first_name, :last_name, :gamer_tag, :password, :password_confirmation, :avatar_url, :location])
    end

end

# strong params is only for 'create', 'update', or 'delete'
# its purpose is to work with user in
