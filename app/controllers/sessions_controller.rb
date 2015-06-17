class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
  end

  def create
    if User.count == 0
      user = User.create(name: params[:name], password: params[:password])
      redir user.id
    else
    	user = User.find_by(name: params[:name])
    	if user and user.authenticate(params[:password])
    		redir user.id
    	else
    		redirect_to login_url, alert: "неверная комбинация имени и пароля"
    	end
    end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to store_url, notice: "Сеанс работы завершен"
  end
  def redir user_id
    session[:user_id] = @user_id
    redirect_to admin_url
  end
end
