class UsersController < ApplicationController

    # def index
    #     @users = User.all
    # end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        # @user = User.new(user_params)

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
        params.require(:user).permit([:first_name, :last_name, :gamer_tag, :password_digest, :avatar_url, :location])
    end
    
end

# strong params is only for 'create', 'update', or 'delete'
# its purpose is to work with user in
