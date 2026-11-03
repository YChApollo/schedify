from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("apps.schedify.urls")),
    path("courses/", include("apps.courses.urls")),
    path("todos/", include("apps.todos.urls")),
]
