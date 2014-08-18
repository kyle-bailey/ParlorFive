class WorksController < ApplicationController

	def index
		@works = Work.all
	end

	def new
		@work = Work.new
		@image = Image.new
		@user = current_user
	end

	def create
		@work = Work.new(permitted_params)
		@image = Image.new(params[:images])
		if @work.save
			@image.work_id = @work.id
			if @image.save
      	redirect_to user_path(@work.user_id), notice: 'Work was successfully created.'
      else
      	render action: 'new'
      end
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