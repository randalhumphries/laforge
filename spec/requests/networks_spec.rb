require 'rails_helper'

RSpec.describe NetworksController, type: :request do
  describe 'request list of all client networks' do
    context 'not authenticated' do
      it 'redirects to the login page' do
        get root_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'authenticated' do
      it 'lists the client networks' do
        @company = create(:company)
        @client  = create(:client, company: @company)
        @network = create(:network, client: @client)

        sign_in(create(:user, company: @company))
        get client_path(@client)
        expect(response.body).to include(@network.network_type)
        expect(response.body).to include(@network.ip_subnet)
        expect(response.body).to include(@network.description)
      end
    end
  end
end
