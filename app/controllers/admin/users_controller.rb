class Admin::UsersController < AdminController

	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = 'User Created'
			redirect_to [:admin, :users]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@user.update_attributes(user_params)
		if @user.save
			flash[:success] = 'User Updated'
			redirect_to [:admin, :users]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @user == current_user
			flash[:error] = 'Cannot delete yourself'
		elsif @user.destroy
			flash[:success] = 'User Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :users]

	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end

	def set_user
      @user = User.find(params[:id])
    end

end
