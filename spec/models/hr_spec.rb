require 'rails_helper'

RSpec.describe Hr, type: :model do
  it 'is not valid without a address' do
    should validate_presence_of(:address)
  end
  it 'is not valid without a name' do
    should validate_presence_of(:name)
  end
  it 'is not valid without a age' do
    should validate_presence_of(:age)
  end
  it 'is not valid without a phone_no' do
    should validate_presence_of(:phone_no)
  end
  it "validates that it's not a vaild" do
    subject.phone_no = 123456
    subject.validate 
    expect(subject.errors[:phone_no]).to_not include('must not be a valid')
  end
end
