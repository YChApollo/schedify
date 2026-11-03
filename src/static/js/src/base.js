// static/js/index.js
document.addEventListener('htmx:afterSettle', (event) => {
    if (window.Alpine) {
        window.Alpine.initTree(event.detail.target);
    }
});

document.body.addEventListener('htmx:responseError', (event) => {
    console.error('HTMX Request Error：', event.detail.xhr.status);
});