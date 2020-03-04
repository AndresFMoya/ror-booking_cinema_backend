module Mutations
  class CreateBooking < BaseMutation
    argument :user_id, Integer, required: true
    argument :movie_id, Integer, required: true

    field :booking, Types::MovieType, null: true
    field :errors, [String], null: false

    def resolve(user_id: nil, movie_id: nil)
      booking = Booking.new(
          user_id: user_id,
          movie_id: movie_id
      )
      if booking.save
        { booking: booking }
      else
        { errors: booking.errors.full_messages }
      end
    end
  end
end
