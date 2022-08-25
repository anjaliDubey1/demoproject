require 'rails_helper'

RSpec.describe Hr, type: :model do
  subject {Hr.new(name:"Riya Namdev", phone_no: 1234567891, age: 20, address:"423,kalani nagar indore")}

  before {subject.save}

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'age should be present' do
    subject.age = nil
    expect(subject).to_not be_valid
  end
  it 'phone_no should be present' do
    subject.phone_no = nil
    expect(subject).to_not be_valid
  end
  it 'address should be present' do
    subject.address = nil
    expect(subject).to_not be_valid
  end
end
