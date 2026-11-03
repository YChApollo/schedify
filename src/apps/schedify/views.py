from django.http import HttpRequest, HttpResponse
from django.shortcuts import render


def index_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/index.html")


def register_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/register.html")


def login_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/login.html")


def logout_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/logout.html")


def about_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/about.html")


def demo_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/demo.html")


def contribute_view(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/contribute.html")
