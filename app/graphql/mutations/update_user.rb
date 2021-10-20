module Mutations
  class UpdateUser < BaseMutation
    # TODO: define return fields
    field :user, Types::UserType , null: true
    # TODO: define arguments
    argument :id, ID, required: true

    # argument :full_name, String, required: true
    # argument :email, String, required: true
    argument :attributes, Types::UserAttributes, required: true

    # # TODO: define resolve method
    def resolve(id:, attributes:)
      user = User.find(id)
      if user.update(attributes.to_h)
        { user: user}
      else
        raise GraphQL::ExecutionError, user.errors.full_messages.join(", ")
      end
    end
  end
end
