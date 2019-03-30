import graphene



class profileSchema(graphene.ObjectType):
    userId = graphene.String()
    nickname = graphene.String()
    kind = graphene.String()
    skill = graphene.String()
    lang = graphene.String()
    userSex = graphene.String()
    userPhoto = graphene.String()

class updateUserProfile(graphene.Mutation):
    class Arguments:
        nickname = graphene.String()
        kind = graphene.String()
        skill = graphene.String()
        lang = graphene.String()
        userSex = graphene.String()
        userPhoto = graphene.String()

    status = graphene.Boolean()
    err = graphene.String()

    def mutate(self, info, nickname, kind, skill, lang, userSex, userPhoto):

        nickname = graphene.String()
        kind = graphene.String()
        skill = graphene.String()
        lang = graphene.String()
        userSex = graphene.String()
        userPhoto = graphene.String()

        data = {
            'nickname': nickname,
            'kind': kind,
            'lang': lang,
            'userSex': userSex,
            'userPhoto': userPhoto
            }
        print(data)
        # status = data['status']
        # err = data['err']
        return updateUserProfile(status=True, err="Success")



class Query(graphene.ObjectType):
    test = graphene.String(test=graphene.String())
    userProfile = graphene.Field(profileSchema, ticket=graphene.String(required=True))

    def resolve_test(self, info, test):
        return 'hello world'

    def resolve_userProfile(self, info, ticket):
        # TODO 增加根据ticket得到相关用户信息的逻辑
        return profileSchema(userId=ticket+"asada", userSex="male", nickname='Cat.1', kind="Tech", skill="Coding", userPhoto="http://www.liberaldictionary.com/wp-content/uploads/2018/11/test-1.png", lang="EN")


class Mutation(graphene.ObjectType):
    writeUserProfile = updateUserProfile.Field()
    def resolve_writeUserProfile(self, info):
        return updateUserProfile


schema = graphene.Schema(query=Query, mutation=Mutation)


