QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "Query Root"

  field :movie do
    type MovieType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Movie.find(args[:id])
    }
  end

  field :actor do
    type ActorType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Actor.find(args[:id])
    }
  end

end
