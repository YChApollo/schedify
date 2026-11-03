from django.urls import path

from . import views

app_name = "courses"
urlpatterns = [
    path("", views.index_view, name="index"),
    path("", views.courses_view, name="courses"),
]
