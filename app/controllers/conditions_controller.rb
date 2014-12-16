class ConditionsController < ApplicationController
  before_action :find_pet
  before_action :find_condition, only: [:show, :update, :destroy]

  def index
    @conditions = @pet.conditions
    render json: @conditions.as_json
  end

  def show
    render json: @condition
  end

  def new
    @condition = Condition.new
  end

  def create
    @condition = Condition.create(condition_params)
  end

  def update
    @condition.update(condition_params)
  end

  def destroy
    @condition.destroy
  end


  private

    def find_pet
      @pet = Pet.find(params[:pet_id])
    end

    def find_condition
      @condition = @pet.conditions.find(params[:id])
    end

    def condition_params
      params.permit(:name, :link_url, :description, :diagnosis_date, :ongoing, :pet_id)
    end

end
