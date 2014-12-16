class LengthsController < ApplicationController
  before_action :find_pet
  before_action :find_length, only: [:show, :destroy]

  def index
    @lengths = @pet.lengths
    render json: @lengths.as_json
  end

  def show
    render json: @length
  end

  def new
    @length = Length.new
  end

  def create
    @length = Length.create(length_params)
  end

  def destroy
    @length.destroy
  end


  private

    def find_pet
      @pet = Pet.find(params[:pet_id])
    end

    def find_length
      @length = @pet.lengths.find(params[:id])
    end

    def length_params
      params.permit(:length_amt, :length_units, :date_measured, :pet_id)
    end

end
