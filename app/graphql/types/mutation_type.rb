module Types
  class MutationType < Types::BaseObject
    field :create_booking, mutation: Mutations::CreateBooking
    field :create_user, mutation: Mutations::CreateUser
    field :create_movie, mutation: Mutations::CreateMovie
  end
end
