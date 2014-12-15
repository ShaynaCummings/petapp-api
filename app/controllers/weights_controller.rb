class WeightsController < ApplicationController
  before_action :find_pet
  before_action :find_weight, only: [:show, :destroy]

  def index
    @weights = @pet.weights
    render json: @weights.as_json
  end

  def show
    render json: @weight
  end

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.create(weight_params)
  end

  def destroy
    @weight.destroy
  end


  private

    def find_pet
      @pet = Pet.find(params[:pet_id])
    end

    def find_weight
      @weight = Weight.find(params[:pet_id])
    end

    def weight_params
      params.permit(:weight_amt, :weight_units, :date_measured, :pet_id)
    end

end
