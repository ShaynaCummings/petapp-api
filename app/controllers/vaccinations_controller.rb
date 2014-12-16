class VaccinationsController < ApplicationController
  before_action :find_pet
  before_action :find_vaccination, only: [:show, :destroy]

  def index
    @vaccinations = @pet.vaccinations
    render json: @vaccinations.as_json
  end

  def show
    render json: @vaccination
  end

  def new
    @vaccination = Vaccination.new
  end

  def create
    @vaccination = Vaccination.create(vaccination_params)
  end

  def destroy
    @vaccination.destroy
  end


  private

    def find_pet
      @pet = Pet.find(params[:pet_id])
    end

    def find_vaccination
      @vaccination = @pet.vaccinations.find(params[:id])
    end

    def vaccination_params
      params.permit(:name, :date_given, :next_due, :pet_id)
    end

end
