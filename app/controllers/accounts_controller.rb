class AccountsController < ApplicationController
  before_action :authenticate_user
  before_action :find_client, except: %i[index]
  before_action :find_accounts, only: %i[index]
  before_action :find_account, except: %i[index new create]

  def index
  end

  def new
    @account = @client.accounts.new
  end

  def create
    @account = @client.accounts.new(account_params)

    if @account.save
      redirect_to client_path(@client)
    else
      flash[:error] = @account.errors.full_messages.to_sentence
    end
  end

  def edit
  end

  def update
    if @account.update(account_params)
      redirect_to client_path(@client)
    else
      flash[:error] = @account.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @account.destroy
      redirect_to client_path(@client)
    else
      flash[:error] = @account.errors.full_messages.to_sentence
    end
  end

  private

    def account_params
      params.require(:account).permit(
        :account_type,
        :name,
        :address,
        :username,
        :password
      )
    end

    def find_client
      @client = current_user.company.clients.find(params[:client_id])
    end

    def find_accounts
      @accounts = current_user.company.clients.find(params[:client_id]).accounts
    end

    def find_account
      @account = current_user.company.clients.find(params[:client_id]).accounts.find(params[:id])
    end
end
