module Queries
  class ListUsers < GraphQL::Schema::Resolver

    type [Types::UserType], null: false

    def resolve
      User.all.order(created_at: :desc)
    end
  end
end