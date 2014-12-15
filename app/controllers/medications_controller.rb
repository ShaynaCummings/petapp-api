class MedicationsController < ApplicationController
  before_action :find_medication, only: [:show, :edit, :update, :destroy]

  def index
    if params[:pet_id]
      @pet = Pet.find(params[:pet_id])
      @medications = @pet.medications
    else
      @medications = Medication.all
    end

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

    def find_medication
      @medication = Medication.find(params[:id])
    end

    def medication_params
      # params.require(:id).permit()
    end

end
