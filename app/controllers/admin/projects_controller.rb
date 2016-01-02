class Admin::ProjectsController < AdminController

	before_action :set_project, only: [:edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:success] = 'Project Created'
			redirect_to [:admin, :projects]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@project.update_attributes(project_params)
		if @project.save
			flash[:success] = 'Project Updated'
			redirect_to [:admin, :projects]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @project.destroy
			flash[:success] = 'Project Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :projects]

	end

	private

	def project_params
		params.require(:project).permit(:name, :body)
	end

	def set_project
      @project = Project.find(params[:id])
    end

end