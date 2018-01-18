class Steps::PhotosController < PhotosController
  before_action :set_photographic

  private

  def set_photographic
    @photographic = Step.find(params[:step_id])
  end

end
