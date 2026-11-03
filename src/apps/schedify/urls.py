from django.urls import path

from . import views

app_name = "schedify"
urlpatterns = [
    path("", views.index_view, name="index"),
    path("register/", views.register_view, name="register"),
    path("login/", views.login_view, name="login"),
    path("logout/", views.register_view, name="logout"),
    path("about/", views.about_view, name="about"),
    path("demo/", views.demo_view, name="demo"),
    path("contribute/", views.contribute_view, name="contribute"),
]
