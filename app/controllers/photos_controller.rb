class PhotosController < ApplicationController

  def create
    @photo = @photographic.photos.new photo_params
    @photo.save
    if @photographic.collection.name != "steps"
      redirect_to @photographic, notice: "your photo had been uploaded"
    else
      redirect_to "/projects/#{@photographic.project_id}", notice: "your photo for step #{@photographic.title} had been uploaded"
    end
  end

  private

  def photo_params

    params.require(:photo).permit(:comment, :url)
  end
end
