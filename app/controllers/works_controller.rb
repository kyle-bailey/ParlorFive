class WorksController < ApplicationController

	def index
		@works = Works.all
	end

	def new
		@work = Works.new
	end

	def create

	end

	def show
		@work = Work.find(params[:id])
	end

end