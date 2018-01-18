class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def ongoing
    @projects = Project.ongoing(current_user.id)
  end

  def completed
    @projects = Project.completed(current_user.id)
  end
  
  def create
    new_project = current_user.projects.create(params.require(:project).permit(:title, :category, :no_of_steps, :stage, :review))
    no_of_steps = new_project.no_of_steps
    if new_project.stage == 1
      new_project["created_date"] = DateTime.now.to_date
    else
      new_project["completed_date"] = DateTime.now.to_date
    end
    new_project.save
    new_project.create_steps(no_of_steps)
    flash[:notice] = "project successfully created"
    redirect_to "/projects/#{new_project.id}"
  end

  def new
    @project = Project.new
  end

  def edit

  end

  def show
    @project = Project.find(params[:id])
    @photo_type = "project"

  end

  def update

  end

end
