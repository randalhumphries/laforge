class NetworksController < ApplicationController
  before_action :authenticate_user
  before_action :find_client, except: %i[index]
  before_action :find_networks, only: %i[index]
  before_action :find_network, except: %i[index new create]

  def index
  end

  def new
    @network = @client.networks.new
  end

  def create
    @network = @client.networks.new(network_params)

    if @network.save
      redirect_to client_path(@client)
    else
      flash[:error] = @network.errors.full_messages.to_sentence
    end
  end

  def edit
  end

  def update
    if @network.update(network_params)
      redirect_to client_path(@client)
    else
      flash[:error] = @network.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @network.destroy
      redirect_to client_path(@client)
    else
      flash[:error] = @network.errors.full_messages.to_sentence
    end
  end

  private

    def network_params
      params.require(:network).permit(
        :network_type,
        :ip_subnet,
        :description
      )
    end

    def find_client
      @client = current_user.company.clients.find(params[:client_id])
    end

    def find_networks
      @networks = current_user.company.clients.find(params[:client_id]).networks
    end

    def find_network
      @network = current_user.company.clients.find(params[:client_id]).networks.find(params[:id])
    end
end
