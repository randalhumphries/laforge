require 'rails_helper'

RSpec.describe "CompanyController", type: :request do
  it 'redirects to the login page when user is not authenticated' do
    get "/"
    expect(response).to redirect_to("/users/sign_in")
  end
end