class Materials::PhotosController < PhotosController
  before_action :set_photographic

  private

  def set_photographic
    @photographic = Material.find(params[:material_id])
  end

end
