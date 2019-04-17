window.onload = function (ev) {
    InitEvents();
}

function InitEvents() {
    var links = $(".gotoContenedor");
    $.each(links, function (index, value) {
        value.onclick = EvtChangePage;
    });

    var divs = $(".dashboardWidget");
    $.each(divs, function (index, value) {
        value.onclick = EvtChangePage;
    });
}

function EvtChangePage() {
    LoadPage($(this).attr('url'));
}

function LoadPage(url) {
    $('#contenedor').load(url);
}