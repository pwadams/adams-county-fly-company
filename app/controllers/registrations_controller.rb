class RegistrationsController < ApplicationController

    def new
      @user = User.new
    end

    def create
      @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password))
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Thanks for signing up!"
        redirect_to root_path
      else
        render :new
    end
  end
end
