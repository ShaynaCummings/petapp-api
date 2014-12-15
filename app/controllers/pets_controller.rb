class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all

    render json: @pets.as_json
  end

  def show
    render json: @pet
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
    #need to rewrite this eventually to include .require(:pet)
    #http://stackoverflow.com/questions/13745689/getting-rails-api-and-strong-parameters-to-work-together
    params.permit(:name, :category, :breed, :birthdate, :sex, :adoption_date, :picture_url, :user_id, :veterinarian_id)
  end


end
