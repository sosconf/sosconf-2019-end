import graphene
import user_info.schema


class Query(user_info.schema.Query, graphene.ObjectType):

    pass


class Mutations(user_info.schema.Mutation, graphene.ObjectType):

    pass


schema = graphene.Schema(query=Query, mutation=Mutations)
