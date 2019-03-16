require 'rails_helper'

RSpec.describe "Companies", type: :request do
  describe 'request list of all companies' do
    it 'redirects to the login page when user is not authenticated' do
      get root_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end