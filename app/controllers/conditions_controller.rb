class ConditionsController < ApplicationController

  def index
    @conditions = Condition.all

    render json: @conditions.as_json
  end

  def show
    @condition = Condition.find(params[:id])

    render json: @condition
  end


  private

  def conditions_params
    params.require(:id).permit(:name, :link_url, :description, :pet_id)
  end

end
