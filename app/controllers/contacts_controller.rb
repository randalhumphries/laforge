class ContactsController < ApplicationController
  before_action :authenticate_user
  before_action :find_client, except: %i[index]
  before_action :find_contacts, only: %i[index]
  before_action :find_contact, except: %i[index new create]

  def index
  end

  def new
    @contact = @client.contact.new
  end

  def create
    @contact = @client.contact.new(contacts_params)

    if @contact.save
      redirect_to client_path(@client)
    else
      flash[:error] = @contact.errors.full_messages.to_sentence
    end
  end

  def edit
  end

  def update
    if @contact.update(contacts_params)
      redirect_to client_path(@client)
    else
      flash[:error] = @contact.errors.full_messages.to_sentence
    end
  end

  def destroy
    if @contact.destroy()
      redirect_to client_contact_path(@client)
    else
      flash[:error] = @contact.errors.full_messages.to_sentence
    end
  end

  private

    def contacts_params
      params.require(:contact).permit(:first_name, :last_name, :title, :email, :primary_phone, :secondary_phone)
    end

    def find_client
      @client = current_user.company.clients.find(params[:client_id])
    end

    def find_contacts
      @contacts = current_user.company.clients.find(params[:client_id]).contact
    end

    def find_contact
      @contact = current_user.company.clients.find(params[:client_id]).contact.find(params[:id])
    end
end
