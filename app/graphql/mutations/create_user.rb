module Mutations
  class CreateUser < Mutations::BaseMutation
    field :user, Types::UserType , null: true
    field :errors, [String], null: false

    argument :full_name, String, required: true
    argument :email, String, required: true

    def resolve(input)
      user = User.new(name: input[:full_name], email: input[:email])
      if user.save
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
