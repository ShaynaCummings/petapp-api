class MedicationsController < ApplicationController

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
    @medication = Medication.find(params[:id])

    render json: @medication
  end


  private

  def medication_params
    # params.require(:id).permit()
  end

end
