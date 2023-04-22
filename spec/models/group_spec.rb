require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    user = User.create(name: 'user1', password: '123456', email: 'user1@mail.com')
    Group.new(name: 'Food', icon: 'https://example.com', user: user)
  end

  before { subject.save }

  it 'should have valid name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid icon' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
