function parse(val) {
    "use strict";
    var result = "Not found",
        tmp = [];
    location.search
        .substr(1)
        .split("&")
        .forEach(function (item) {
            tmp = item.split("=");
            if (tmp[0] === val) {
                result = decodeURIComponent(tmp[1]);
            }
        });
    return result;
}