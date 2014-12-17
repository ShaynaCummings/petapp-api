class EntriesController < ApplicationController

  def index
    @entries = Entry.get_response
    render json: @entries
  end

end
