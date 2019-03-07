class UsersController < ApplicationController

    #----- VIEW PROFILE -----#
    def show
        @user = User.find(params[:id])
    end
    #------------------------#

    #-------- SIGNUP --------#
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        if @user.valid?
            login_user(@user)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end
    #------------------------#

    #---- UPDATE PROFILE ----#
    def edit
        if @logged_in && params[:id].to_i == @logged_in_user.id
          @user = User.find(params[:id])
        else
          flash[:errors] = ["403 - Foribidden: Access is denied."]
          redirect_to root_path
        end
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
          flash[:messages] = ["Account successfully updated"]
          redirect_to user_path(@user)
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to edit_user_path(@user)
        end
    end
    #------------------------#

    #---- DELETE ACCOUNT ----#
    def destroy
        @user = User.find(params[:id])
        if @logged_in && @user.id == @logged_in_user.id
          @user.destroy
          session[:user_id] = nil
        else
          flash[:errors] = ["403 - Foribidden: Access is denied."]
        end
        redirect_to root_path
    end
    #------------------------#

    private

    def user_params
        params.require(:user).permit([:username, :first_name, :last_name, :gamer_tag, :password, :password_confirmation, :avatar_url, :location])
    end

end

# strong params is only for 'create', 'update', or 'delete'
# its purpose is to work with user in
