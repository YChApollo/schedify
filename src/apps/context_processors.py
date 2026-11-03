from django.http import HttpRequest, HttpResponse
from django.urls import reverse


def navigation(request: HttpRequest) -> HttpResponse:
    # url_name：單純的name，不含namespace
    navbar_items: list[dict[str, str]] = [
        # {"label": "Components", "url_name": "components:index"},
        {"label": "Courses", "url_name": "courses:index"},
        {"label": "Todos", "url_name": "todos:index"},
    ]

    # view_name：App的命名空間
    current = getattr(request.resolver_match, "view_name", None)
    for item in navbar_items:
        item["url"] = reverse(item["url_name"])
        item["active"] = item["url_name"] == current

    return {"navbar_items": navbar_items}


def call_to_action(request: HttpRequest) -> HttpResponse:
    cta_buttons: list[dict[str, str]] = [
        {"label": "About", "url_name": "schedify:about"},
        {"label": "Demo", "url_name": "schedify:demo"},
        {"label": "Contribute", "url_name": "schedify:contribute"},
    ]

    for button in cta_buttons:
        button["url"] = reverse(button["url_name"])

    return {"cta_buttons": cta_buttons}
