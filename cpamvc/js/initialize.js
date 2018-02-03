console.log("finished");

var username = "3b264586439c0c3af05fa5c857aa9a95";
var password = "e35b17d041dfb51c209012248750ae54";
var x = $.base64.btoa(username + ':' + password);
var auth = "Basic " + x;



var request = new XMLHttpRequest();
request.open('GET', 'api.intrinio.com', true);
request.setRequestHeader('Authorization', auth);
request.send("/tags/standardized?identifier=AAPL&statement=balance_sheet");

request.onreadystatechange = function () {
    if (request.readyState === 4) {
        console.log(request.responseText);
    }
};