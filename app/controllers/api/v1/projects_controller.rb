class Api::V1::ProjectsController < Api::V1::ApiController

def index
	@projects = Project.all
	
end
def create
	@project = Project.new(project_params)
	if @project.save_check
		render 'create.json'
	else
		render 'errors.json'
	end	
end
def show
	@project = Project.find(params[:id])
	
end
def update
	@project = Project.find(params[:id])
	if @project.update_attributes(project_params)
		render 'update.json'
	else
		render 'errors.json'
	end
	
end
def destroy
	@project = Project.find(params[:id])
	@project.destroy

	
end

private

def project_params
	params[:project].permit(:name,:client_id,:start_date,:end_date)
	
end
end
