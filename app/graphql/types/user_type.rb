module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :card, Integer, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :phone, Integer, null: false
  end
end
