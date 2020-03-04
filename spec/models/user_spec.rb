require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it 'should have a valid name' do
    expect(user).to be_valid
  end

  it 'should not have an empty name' do
    user = FactoryBot.build(:user, name: '')
    expect(user).to_not be_valid
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'should not have an empty email' do
    user = FactoryBot.build(:user, email: '')
    expect(user).to_not be_valid
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'should not have an empty card' do
    user = FactoryBot.build(:user, card: '')
    expect(user).to_not be_valid
    expect(user.errors[:card]).to include("can't be blank")
  end

  it 'must be unique' do
    FactoryBot.create(:user)
    user = FactoryBot.build(:user)
    expect(user).to_not be_valid
    expect(user.errors[:card]).to include('has already been taken')
  end
end
