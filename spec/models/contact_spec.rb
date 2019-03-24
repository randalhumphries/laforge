require 'rails_helper'

RSpec.describe Contact, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:contact)).to be_valid
  end

  it 'is not valid without a first name attribute' do
    expect(build(:contact, first_name: nil)).to_not be_valid
  end

  it 'is not valid without a last name attribute' do
    expect(build(:contact, last_name: nil)).to_not be_valid
  end

  it 'is not valid without an email attribute' do
    expect(build(:contact, email: nil)).to_not be_valid
  end

  it 'is not valid without a primary phone number attribute' do
    expect(build(:contact, primary_phone: nil)).to_not be_valid
  end

  describe '.full_name' do
    it 'should return the first_name and last_name attributes as a concatenated string' do
      @contact           = build(:contact)
      @contact_full_name = @contact.first_name + ' ' + @contact.last_name

      expect(@contact.full_name).to eq(@contact_full_name)
    end
  end
end
