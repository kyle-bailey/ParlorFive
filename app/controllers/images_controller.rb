class ImagesController < ApplicationController

	def index
		@images = Image.all
	end

	def show
		@image = Image.find(params[:id])
	end

	def new
		@image = Image.new
	end

	def create
    @image = Image.new(permitted_params)

    if @image.save
      redirect_to @image, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  private

  def permitted_params
    params.require(:image).permit(:media)
  end
end