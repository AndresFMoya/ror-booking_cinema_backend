require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:movie) { FactoryBot.create(:movie) }

  it 'should have a valid name' do
    expect(movie).to be_valid
  end

  it 'should not have an empty name' do
    movie = FactoryBot.build(:movie, name: '')
    expect(movie).to_not be_valid
    expect(movie.errors[:name]).to include("can't be blank")
  end

  it 'should not have an empty image url' do
    movie = FactoryBot.build(:movie, image: '')
    expect(movie).to_not be_valid
    expect(movie.errors[:image]).to include("can't be blank")
  end

  it 'should not have an empty start date' do
    movie = FactoryBot.build(:movie, date_start: '')
    expect(movie).to_not be_valid
    expect(movie.errors[:date_start]).to include("can't be blank")
  end

  it 'should not have an empty end date' do
    movie = FactoryBot.build(:movie, date_end: '')
    expect(movie).to_not be_valid
    expect(movie.errors[:date_end]).to include("can't be blank")
  end
end
