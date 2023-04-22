require 'rails_helper'

RSpec.describe Operation, type: :model do
  subject do
    user = User.create(name: 'user1', password: '123456', email: 'user1@mail.com')
    Operation.new(name: 'Food', amount: 3, user: user)
  end

  before { subject.save }

  it 'should have valid name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid amount' do
    subject.amount = -1
    expect(subject).to_not be_valid
  end
end
