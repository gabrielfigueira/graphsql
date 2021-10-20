module Mutations
  class DestroyUser < BaseMutation
    field :id, ID, null: true
    # TODO: define arguments
    argument :id, ID, required: true

    # # TODO: define resolve method
    def resolve(id:)
      user = User.find(id)
      user.destroy
      { id: id }
    end
  end
end
