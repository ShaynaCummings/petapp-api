class AppointmentsController < ApplicationController

  def index
    if params[:pet_id]
      @pet = Pet.find(params[:pet_id])
      @appointments = @pet.appointments
    else
      @appointments = Appointment.all
    end

    render json: @appointments.as_json
  end

  def show
    @appointment = Appointment.find(params[:id])

    render json: @appointment
  end


  private

# for refactoring later
  # def get_pet_id
    # @pet = Pet.find(params[:pet_id])
  # end

  def appointments_params
    params.require(:id).permit(:name, :link_url, :description, :pet_id)
  end

end
