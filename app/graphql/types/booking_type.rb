module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :movie_id, Integer, null: false
    field :username, String, null: true
    field :email, String, null:true
    field :phone, String, null:true
    field :card, String, null:true
    field :moviename, String, null:true

    def moviename
      object.movie.name
    end

    def username
      object.user.name
    end

    def email
      object.user.email
    end

    def phone
      object.user.phone
    end

    def card
      object.user.card
    end
  end
end
