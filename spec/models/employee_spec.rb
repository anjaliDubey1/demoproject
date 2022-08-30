require 'rails_helper'

RSpec.describe Employee, type: :model do
  # subject {Employee.new(name:"Riya Namdev", phone_no: 1234567891, age: 20, address:"423,kalani nagar indore")}

  # before {subject.save}

  # it 'is not valid without a name' do
  #   subject.name = nil
  #   expect(subject).to_not be_valid
  # end
  # it 'is not valid without a age' do
  #   subject.age = nil
  #   expect(subject).to_not be_valid
  # end
  # it 'is not valid without a phone_no' do
  #   subject.phone_no = nil
  #   expect(subject).to_not be_valid
  # end
  # it 'is not valid without a address' do
  #   subject.address = nil
  #   expect(subject).to_not be_valid
  #end
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
  describe "Associations" do
    it { should belong_to(:admin) }
  end
end


