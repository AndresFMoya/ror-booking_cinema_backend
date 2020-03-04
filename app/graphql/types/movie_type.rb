module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :image, String, null: false
    field :date_start, String, null: false
    field :date_end, String, null: false
    field :bookings_count, Integer, null:true

    def bookings_count
      object.bookings.size
    end
  end
end
