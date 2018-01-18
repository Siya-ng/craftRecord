class Projects::PhotosController < PhotosController
  before_action :set_photographic

  private

  def set_photographic
    @photographic = Project.find(params[:project_id])
  end

end
