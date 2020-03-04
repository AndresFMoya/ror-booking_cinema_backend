module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :movies, [Types::MovieType], null: false
    field :user, [UserType], null: false do
      argument :card, Integer, required: true
    end
    field :bookings, [Types::BookingType], null: false

    def user(card:)
      User.where(card: card)
    end

    def movies
      Movie.all
    end

    def bookings
      Booking.all
    end
  end
end
