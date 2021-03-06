require 'rails_helper'

RSpec.describe Company, type: :model do
  
  it 'is valid with valid attributes' do
    expect(build(:company)).to be_valid
  end

  it 'is not valid without the name attribute' do
    expect(build(:company, name: nil)).to_not be_valid
  end

end
