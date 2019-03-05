class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end


end

# strong params is only for 'create', 'update', or 'delete'
# because it utilizes the form
