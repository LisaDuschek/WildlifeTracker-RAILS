class SpeciesController < ApplicationController
  def index
    @all_species = Species.all
    render :index
  end

  def create
    @all_species = Species.all
    @species = Species.new(species_params)
    if @species.save
      redirect_to species_index_path
    else
      render :new
    end
  end

  def new
    @species = Species.new
    render :new

  end

  def show
    @species = Species.find(params[:id])
    render :show
  end

  def edit
    @species = Species.find(params[:id])
    render :edit
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(species_params)
      redirect_to species_index_path
    else
      render :edit
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    redirect_to species_index_path
  end

  private
  def species_params
    params.require(:species).permit(:name)
  end
end
