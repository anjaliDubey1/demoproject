require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject {Admin.new(name:"Riya Namdev", phone_no: 1234567891, age: 20, address:"423,kalani nagar indore")}

  before {subject.save}
  it 'address can not be blank' do
    should validate_presence_of(:address)
  end
  it 'name can not be blank' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'age can not be blank' do
    subject.age = nil
    expect(subject).to_not be_valid
  end
  it 'phone_no can not be blank' do
    subject.phone_no = nil
    expect(subject).to_not be_valid
  end
  it 'address can not be blank' do
    subject.address = nil
    expect(subject).to_not be_valid
  end
end
