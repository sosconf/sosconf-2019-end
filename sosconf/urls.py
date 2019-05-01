"""sosconf URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.urls import path, include
from graphene_django.views import GraphQLView
from . import views, schema

urlpatterns = [
    path('/', views.hello_world),
    path('login', views.login),
    path('logout', views.logout),
    path('cas_proc', views.cas_proc),
    path('register', views.register),
    path('check_ticket', views.user_ticket),
    path('cas/', include('mama_cas.urls')),
    path('graphql/', GraphQLView.as_view(graphiql=True)),
]
