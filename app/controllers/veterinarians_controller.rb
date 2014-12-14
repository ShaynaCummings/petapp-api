class VeterinariansController < ApplicationController

  def index
    if params[:pet_id]
      @pet = Pet.find(params[:pet_id])
      @veterinarians = @pet.veterinarians
    else
      @veterinarians = Veterinarian.all
    end

    render json: @veterinarians.as_json
  end

  def show
    @veterinarian = Veterinarian.find(params[:id])

    render json: @veterinarian
  end


  private

  def veterinarian_params
    # params.require(:id).permit()
  end

end
