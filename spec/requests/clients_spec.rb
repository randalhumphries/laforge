require 'rails_helper'

RSpec.describe 'Clients', type: :request do
  describe 'request list of all clients' do
    context 'not authenticated' do
      it 'redirects to the login page' do
        get root_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'authenticated' do
      it 'lists the clients' do
        @company = create(:company)
        @client  = create(:client, company: @company)

        sign_in(create(:user, company: @company))
        get clients_path
        expect(response.body).to include(@client.name)
      end
    end
  end
end
