from django.db import models

class User(models.Model):
    """
    用户信息模型
    """
    uid = models.AutoField(primary_key=True)
    userId = models.CharField(max_length=64, unique=True)
    nickname = models.CharField(max_length=64)
    userSex = models.CharField(max_length=6)
    userPhoto = models.CharField(max_length=1000)
    groupKind = models.ForeignKey('GroupKind', on_delete=models.CASCADE, related_name='users')
    skill = models.CharField(max_length=32)
    lang = models.ForeignKey('Lang', on_delete=models.CASCADE, related_name='users')
    email = models.CharField(max_length=320)
    description = models.CharField(max_length=72)


class GroupKind(models.Model):
    """
    组别模型
    list:
        - technology (Tech)
        - design (Des)
        - market (Mark)
        - sponsor (Spon)
        - media (Med)
        - maneuver (Mane)
        - conference affairs (CA)
        - pending (Pend)
    """
    kid = models.AutoField(primary_key=True)
    shortName = models.CharField(max_length=4, unique=True)
    fullName = models.CharField(max_length=32, unique=True)


class Lang(models.Model):
    """
    语言模型
    """
    lid = models.AutoField(primary_key=True)
    langCode = models.CharField(max_length=8, unique=True)
    cname = models.CharField(max_length=64)


class Skill(models.Model):
    """
    技能模型
    """
    sid = models.AutoField(primary_key=True)
    sname = models.CharField(max_length=32, unique=True)
    desciption = models.TextField()