class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render :index
  end

  # def create
  #
  # end

  # def new
  #
  # end

  def show
    @species = Species.find(params[:id])
    render :show
  end

  # def edit
  #
  # end

  # def update
  #
  # end

  # def destroy
  #
  # end

end
