function getCookie(name) {
    var nameOfCookie = name + "=";
    var x = 0;
    while (x <= document.cookie.length) {
        var y = (x + nameOfCookie.length);
        if (document.cookie.substring(x, y) == nameOfCookie) {
            if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
                endOfCookie = document.cookie.length;
            return unescape(document.cookie.substring(y, endOfCookie));
        }
        x = document.cookie.indexOf(" ", x) + 1;
        if (x == 0)
            break;
    }
    return "";
}

function setCookie(name, value, expiredays, cookie_num) {
    var todayDate = new Date();
    todayDate.setDate(todayDate.getDate() + expiredays);
    var eventCookie = getCookie(name);

    if (eventCookie.length == 0) {
        eventCookie = "no/no/no/no/no/no/no/no/no/no/no/no";
    }
    var arr_pop = new Array(12), new_value;
    arr_pop = eventCookie.split("/");
    arr_pop[parseInt(cookie_num) - 1] = value;

    new_value = arr_pop[0] + "/" + arr_pop[1] + "/" + arr_pop[2] + "/" + arr_pop[3] + "/" + arr_pop[4] + "/" + arr_pop[5] + "/" + arr_pop[6] + "/" + arr_pop[7] + "/" + arr_pop[8] + "/" + arr_pop[9] + "/" + arr_pop[10] + "/" + arr_pop[11];

    document.cookie = name + "=" + escape(new_value) + ";domain=megastudy.net;path=/;expires=" + todayDate.toGMTString() + ";"
}

//ÆË¾÷ÄíÅ° Á¤º¸ °¡Á®¿À±â
function fnc_getCookie(name, num) {
     

    var popCookie = getCookie(name);
    var arr_pop = new Array(12);
     

    if (popCookie.length != 0) {

        popCookie = popCookie.replace(/undefined/g, "no");
        popCookie = popCookie.replace(/=/g, "");

        arr_pop = popCookie.split("/");

        if (arr_pop[0] != "yes" && arr_pop[0] != "no") {
            arr_pop[0] = "no";
        }
        if (arr_pop[1] != "yes" && arr_pop[1] != "no") {
            arr_pop[1] = "no";
        }
        if (arr_pop[2] != "yes" && arr_pop[2] != "no") {
            arr_pop[2] = "no";
        }
        if (arr_pop[3] != "yes" && arr_pop[3] != "no") {
            arr_pop[3] = "no";
        }
        if (arr_pop[4] != "yes" && arr_pop[4] != "no") {
            arr_pop[4] = "no";
        }
        if (arr_pop[5] != "yes" && arr_pop[5] != "no") {
            arr_pop[5] = "no";
        }

        if (arr_pop[6] != "yes" && arr_pop[6] != "no") {
            arr_pop[6] = "no";
        }

        if (arr_pop[7] != "yes" && arr_pop[7] != "no") {
            arr_pop[7] = "no";
        }

        if (arr_pop[8] != "yes" && arr_pop[8] != "no") {
            arr_pop[8] = "no";
        }

        if (arr_pop[9] != "yes" && arr_pop[9] != "no") {
            arr_pop[9] = "no";
        }

        if (arr_pop[10] != "yes" && arr_pop[10] != "no") {
            arr_pop[10] = "no";
        }

        if (arr_pop[11] != "yes" && arr_pop[11] != "no") {
            arr_pop[11] = "no";
        }

        popCookie = arr_pop[0] + "/" + arr_pop[1] + "/" + arr_pop[2] + "/" + arr_pop[3] + "/" + arr_pop[4] + "/" + arr_pop[5] + "/" + arr_pop[6] + "/" + arr_pop[7] + "/" + arr_pop[8] + "/" + arr_pop[9] + "/" + arr_pop[10] + "/" + arr_pop[11];
        var todayDate = new Date();
        todayDate.setHours(24 + 8);

        document.cookie = name + "=" + escape(popCookie) + "; path=/; expires=" + todayDate.toGMTString() + ";"



        return arr_pop[num];
    }

}

