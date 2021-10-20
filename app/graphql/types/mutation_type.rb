module Types
  class MutationType < Types::BaseObject
    field :destroy_user, mutation: Mutations::DestroyUser

    field :update_user, mutation: Mutations::UpdateUser
    # TODO: remove me
    field :test_field, String, null: false, description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_user, mutation: Mutations::CreateUser
  end
end
