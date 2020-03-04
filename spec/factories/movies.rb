FactoryBot.define do
  factory :movie do
    name { 'Inception' }
    image { 'https://en.wikipedia.org/wiki/Inception#/media/File:Inception_(2010)_theatrical_poster.jpg' }
    date_start { '2020-03-03' }
    date_end { '2020-03-10' }
  end
end
