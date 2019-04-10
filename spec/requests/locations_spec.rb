require 'rails_helper'

RSpec.describe LocationsController, type: :request do
  describe 'request list of all locations' do
    context 'not authenticated' do
      it 'redirects to the login page' do
        get root_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'authenticated' do
      it 'lists the locations' do
        @company  = create(:company)
        @client   = create(:client, company: @company)
        @location = create(:location, client: @client)

        sign_in(create(:user, company: @company))
        get client_path(@client)
        expect(response.body).to include(@location.primary_address)
      end
    end
  end
end
