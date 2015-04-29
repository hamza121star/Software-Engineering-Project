class SessionsController < ApplicationController
  def new
  end

  def create
    @user = Student.where(:email => params[:session][:email].downcase).where(:password => params[:session][:password]).first
    if @user
      # Log the user in and redirect to the user's show page.
	session[:user_id] = @user.id
	redirect_to @user
	#format.html {redirect_to @user , notice: "Success. Logged in!"}
    else
      #flash.now[:danger] = 'Invalid email/password combination'
	
     redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to '/login'    
  end
end
