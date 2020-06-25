from django.urls import path
from Pasteur import views

urlpatterns = [
    path('', views.Pasteur, name='Pasteur'),
]
