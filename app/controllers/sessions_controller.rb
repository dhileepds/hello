class SessionsController < ApplicationController
  def new
      render 'login'
  end

  def create

    #user = User.find_by(email: params[:session][:email].downcase)
   #user = (params[:session][:username])
  # pass = (params[:session][:password])
   #user = User.find_by(username: params[:session][:username])
   #pass = User.find_by(password_digest: params[:session][:password])
    #user = User.find_by_username(params[:username])
     #uname=User.where(username: user, password_digest: pass)
   ## uname= User.first("username = '#{params[:username]}' AND password_digest = '#{params[:password]}'")
    #uname = User.where('username = ? AND password_digest = ?',user, pass)
    user = User.find_by_username(params[:session][:username])
    if user #and user.authenticate(params[:password])
       #if user && pass
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
       redirect_to root_url, notice: 'Please provide correct username and password!'
      #redirect_to root_url
    end
  end

 def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end

  def non_topnavebar_action
    do_stuff
    @skip_footer = true
  end
end
