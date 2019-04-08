import graphene
import sys
sys.path.append('..')
from sosconf.utils import is_cas_login
from sosconf.utils import request_photo_url


class profileSchema(graphene.ObjectType):
    userId = graphene.String()
    nickname = graphene.String()
    groupKind = graphene.String()
    skill = graphene.String()
    lang = graphene.String()
    userSex = graphene.String()
    userPhoto = graphene.String()
    email = graphene.String()
    description = graphene.String()
    status = graphene.Boolean()
    err = graphene.String()


class updateUserProfile(graphene.Mutation):
    class Arguments:
        nickname = graphene.String()
        groupKind = graphene.String()
        skill = graphene.String()
        lang = graphene.String()
        userSex = graphene.String()
        userPhoto = graphene.String()
        email = graphene.String()
        description = graphene.String()

    status = graphene.Boolean()
    err = graphene.String()

    def mutate(self, info, nickname, groupKind, skill, lang, userSex,
               userPhoto, email, description):

        nickname = graphene.String()
        groupKind = graphene.String()
        skill = graphene.String()
        lang = graphene.String()
        userSex = graphene.String()
        userPhoto = graphene.String()
        email = graphene.String()
        description = graphene.String()

        data = {
            'nickname': nickname,
            'kind': groupKind,
            'lang': lang,
            'userSex': userSex,
            'email': email,
            'description': description,
            'userPhoto': userPhoto
        }
        print(data)
        # status = data['status']
        # err = data['err']
        return updateUserProfile(status=True, err="Success")


class Query(graphene.ObjectType):
    test = graphene.String(test=graphene.String())
    userProfile = graphene.Field(
        profileSchema, ticket=graphene.String(required=True))

    def resolve_test(self, info, test):
        return 'hello world'

    def resolve_userProfile(self, info, ticket):
        # TODO 增加根据ticket得到相关用户信息的逻辑
        resultBool_username = is_cas_login(ticket)
        if resultBool_username[0]:
            return profileSchema(
                userId=resultBool_username[1],
                userSex="male",
                nickname=resultBool_username[1],
                groupKind="Tech",
                skill="Coding",
                userPhoto=request_photo_url(resultBool_username[1]),
                lang="EN",
                email='hi@sosconf.org',
                description='A good boy!',
                err="Success",
                status=True)
        else:
            return profileSchema(err="Ticket error", status=False)


class Mutation(graphene.ObjectType):
    writeUserProfile = updateUserProfile.Field()

    def resolve_writeUserProfile(self, info):
        return updateUserProfile


schema = graphene.Schema(query=Query, mutation=Mutation)
