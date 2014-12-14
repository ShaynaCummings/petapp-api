class PetsController < ApplicationController

def index
  @pets = Pet.all

  render json: @pets.as_json
end

def show
  @pet = Pet.find(params[:id])

  render json: @pet
end



private

  def pets_params
    params.require(:id).permit(:name, :type, :breed, :birthdate, :sex, :adoption_date, :picture_url, :user_id, :veterinarian_id)
  end


end
