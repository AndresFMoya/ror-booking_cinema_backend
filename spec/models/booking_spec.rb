require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:booking) { FactoryBot.build(:booking) }

  it 'should have an User and an amount' do
    expect(booking).to be_valid
  end

  it 'should not be valid without an User' do
    booking = FactoryBot.build(:booking, user: nil)
    expect(booking).to_not be_valid
  end

  it 'should not be valid without a movie' do
    booking = FactoryBot.build(:booking, movie: nil)
    expect(booking).to_not be_valid
  end
end
