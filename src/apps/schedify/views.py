from django.http import HttpRequest, HttpResponse
from django.shortcuts import render


def index(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/index.html")


def login(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/login.html")


def registry(request: HttpRequest) -> HttpResponse:
    return render(request, "schedify/registry.html")
