from django.http import HttpRequest, HttpResponse
from django.shortcuts import render


def index_view(request: HttpRequest) -> HttpResponse:
    context = {
        "days": ["週一", "週二", "週三", "週四", "週五"],

        "schedule": [
            {
                "is_lunch": False,
                "time": "09:00 - 10:00",
                "courses": ["程式設計", "微積分", "", "英文", "體育"]
            },
            {
                "is_lunch": False,
                "time": "10:00 - 11:00",
                "courses": ["程式設計", "微積分", "資料庫", "英文", "歷史"]
            },
            {
                "is_lunch": True,
                "time": "12:00 - 13:00",
                "courses": []
            },
            {
                "is_lunch": False,
                "time": "13:00 - 14:00",
                "courses": ["資料結構", "", "演算法", "網路概論", "專題製作"]
            },
        ]
    }

    return render(request, "courses/index.html", context)


def courses_view(request: HttpRequest) -> HttpResponse:
    return render(request, "courses/courses.html")
