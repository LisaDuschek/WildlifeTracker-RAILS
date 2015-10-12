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

  # def edit
  #
  # end

  # def update
  #
  # end

  # def destroy
  #
  # end
  private
  def species_params
   params.require(:species).permit(:name)
  end

end
