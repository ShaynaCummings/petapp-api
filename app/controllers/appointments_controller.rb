class ConditionsController < ApplicationController

  def index
    if params[:pet_id]
      @pet = Pet.find(params[:pet_id])
      @conditions = @pet.conditions
    else
      @conditions = Condition.all
    end

    render json: @conditions.as_json
  end

  def show
    @condition = Condition.find(params[:id])

    render json: @condition
  end


  private

# for refactoring later
  # def get_pet_id
    # @pet = Pet.find(params[:pet_id])
  # end

  def conditions_params
    params.require(:id).permit(:name, :link_url, :description, :pet_id)
  end

end
