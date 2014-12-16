class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :update, :destroy]

  def index
    @pets = Pet.all
    render json: @pets.as_json
  end

  def show
    render json: @pet, include: [ :lengths, :weights, :veterinarian, :conditions, :medications, :vaccinations, :appointments ]
    # add expenses, supplies later
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pets_params)
  end

  def update
    @pet.update(pets_params)
  end

  def destroy
    @pet.destroy
  end

private

  def find_pet
      @pet = Pet.find(params[:id])
  end

  def pets_params
    #need to rewrite strong params eventually to include .require(:pet) per this article
    # http://stackoverflow.com/questions/13745689/getting-rails-api-and-strong-parameters-to-work-together
    params.permit(:name, :category, :breed, :birthdate, :sex, :adoption_date, :microchip_number, :picture_url, :user_id, :veterinarian_id)
  end

end
