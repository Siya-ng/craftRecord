class Plans::ProjectsController

  def create
    current_plan = Plan.find(params[:id])
    new_project = current_plan.create_new_project(current_user)
    flash[:notice] = "successfully created"
    redirect_to "/"
    # redirect_to "/projects/#{new_project.id}"

  end
end
