class Plans::PhotosController < PhotosController
  before_action :set_photographic

  private

  def set_photographic
    @photographic = Plan.find(params[:plan_id])
  end

end
