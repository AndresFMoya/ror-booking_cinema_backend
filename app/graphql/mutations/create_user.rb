module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :card, Integer, required: true
    argument :email, String, required: true
    argument :phone, Integer, required:true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(name: nil, card: nil, email: nil, phone: nil)
      user = User.new(
          name: name,
          card: card,
          email: email,
          phone: phone
        )
      if user.save
        { user: user }
      else
        { errors: user.errors.full_messages }
      end
    end
  end
end
