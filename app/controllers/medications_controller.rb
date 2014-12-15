class MedicationsController < ApplicationController
  before_action :find_pet
  before_action :find_medication, only: [:show, :update, :destroy]

  def index
    @medications = @pet.medications
    render json: @medications.as_json
  end

  def show
    render json: @medication
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = Medication.create(medication_params)
  end

  def update
    @medication.update(medication_params)
  end

  def destroy
    @medication.destroy
  end


  private

    def find_pet
      @pet = Pet.find(params[:pet_id])
    end

    def find_medication
      @medication = Medication.find(params[:pet_id])
    end

    def medication_params
      params.permit(:name, :rx_num, :dose_amt, :dose_units, :dose_frequency, :med_cost, :description, :date_prescribed, :pet_id)
    end

end
