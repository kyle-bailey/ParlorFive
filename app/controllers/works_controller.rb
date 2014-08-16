class WorksController < ApplicationController

	def index
		@works = Work.all
	end

	def new
		@work = Work.new #Can't save - need to do a two step process. Save the form for the image, make sure its correct. Once that is saved, then attach the image
		@user = current_user
	end

	def create
		@work = Work.new(permitted_params)
		if @work.save
      redirect_to user_path(@work.user_id), notice: 'Work was successfully created.'
    else
      render action: 'new'
    end
	end

	def show
		@work = Work.find(params[:id])
		@image = @work.image
	end

	private
	def permitted_params
    params.require(:work).permit(:title, :work_type, :description, :user_id)
  end

end