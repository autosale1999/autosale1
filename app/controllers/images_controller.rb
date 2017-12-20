class ImagesController < ApplicationController
   def new
    @image = Image.new
  end

  def create
  	params[:image][:photo_id] = params[:photo_id]
  	@image = Image.create(images_params)

  	redirect_to photo_path(params[:photo_id])
  end


  def images_params
	params.require(:image).permit(:photo_id, :image)
end
end
