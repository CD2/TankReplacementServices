class SessionsController < ApplicationController

  before_action :annonymous_user_only,  only: [:new, :create]

  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if (user && user.authenticate(params[:session][:password]))
  		log_in user
      params[:session][:remember_me] == '1'? remember(user) : forget(user)
  		redirect_to root_path
  	else
  		flash.now[:error] = 'Invalid email/password'
	  	render 'new'
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end


  private

    def annonymous_user_only
      redirect_to root_path if logged_in?
    end

end
