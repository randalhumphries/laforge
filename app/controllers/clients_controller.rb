class ClientsController < ApplicationController
  before_action :authenticate_user
  before_action :find_clients, only: %i[index]
  before_action :find_client, except: %i[index new create]

  def index
  end

  def new
    @client = current_user.company.clients.new
  end

  def create
    @client = current_user.company.clients.new(clients_params)

    if @client.save
      redirect_to clients_path
    else
      flash[:error] = @client.errors.full_messages.to_sentence
    end
  end

  def edit
  end

  def update
    if @client.update(clients_params)
      redirect_to clients_path
    else
      flash[:error] = @client.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @client.destroy
      redirect_to clients_path
    else
      flash[:error] = @client.errors.full_messages.to_sentence
    end
  end

  private

    def clients_params
      params.require(:client).permit(:name)
    end

    def find_clients
      @clients = current_user.company.clients.sort_by { |client| client.name }
    end

    def find_client
      @client = current_user.company.clients.find(params[:id])
    end
end
