from django.urls import path 

from . import views

app_name = 'vue'
urlpatterns = [
        path('', views.hello_world, name='index')
        ]
