class LocationsController < ApplicationController
  before_action :authenticate_user
  before_action :find_client, except: %i[index]
  before_action :find_locations, only: %i[index]
  before_action :find_location, except: %i[index new create]

  def index
  end

  def new
    @location = @client.location.new
  end

  def create
    @location = @client.location.new(address_params)

    if @location.save
      redirect_to client_path(@client)
    else
      flash[:error] = @location.errors.full_messages.to_sentence
    end
  end

  def edit
  end

  def update
    if @location.update(address_params)
      redirect_to client_path(@client)
    else
      flash[:error] = @location.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @location.destroy
      redirect_to client_path(@client)
    else
      flash[:error] = @location.errors.full_messages.to_sentence
    end
  end

  private
  
    def address_params
      params.require(:location).permit(
        :name,
        :primary_address,
        :secondary_address,
        :city,
        :state,
        :zip,
        :main_phone
      )
    end

    def find_client
      @client = current_user.company.clients.find(params[:client_id])
    end

    def find_locations
      @locations = current_user.company.clients.find(params[:client_id]).location
    end

    def find_location
      @location = current_user.company.clients.find(params[:client_id]).location.find(params[:id])
    end
end
