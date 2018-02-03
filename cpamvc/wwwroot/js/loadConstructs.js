

function getToken() {
    var username = "3b264586439c0c3af05fa5c857aa9a95";
    var password = "e35b17d041dfb51c209012248750ae54";
    var token = username + ":" + password;
    var hash = btoa(token);
    return hash;
}

function loadConstructs(statementName) {
    var hash = getToken();
    var req = new XMLHttpRequest();
    req.open('GET', 'https://api.intrinio.com/tags/standardized?identifier=AAPL&statement=' + statementName, true);
    req.setRequestHeader("Authorization", "Basic " + hash);
    req.send();
    //Send data to add constructs post in order to load to db
    req.onreadystatechange = function processRequest(e) {
        if (req.readyState == 4) {
            var response = JSON.parse(req.responseText);
            console.log(response);
            var url = 'LoadData/AddConstructs';
            var data = response.data;

            loadToDb(url, data);
         }
     }
}

function loadStatement(statementName, ticker, year) {
    var hash = getToken();
    var req = new XMLHttpRequest();
    req.open('GET', 'https://api.intrinio.com/financials/standardized?identifier='+ ticker +'&statement='+ statementName +'&fiscal_year='+ year +'&fiscal_period=FY', true);
    req.setRequestHeader("Authorization", "Basic " + hash);
    req.send();
    //Send data to add statement post in order to load to db
    req.onreadystatechange = function processRequest(e) {
        if (req.readyState == 4) {
            var response = JSON.parse(req.responseText);
            console.log(response);
            var url = 'LoadData/AddStatement';
            var statement = response.data;
            var data = {
                'company': {
                    symbol: ticker
                },
                'name': statementName,
                'statement-details': statement
            }
            loadToDb(url, data);
        }
    }
}

function loadToDb(url, data) {
    fetch(url, {
        method: 'POST',
        body: JSON.stringify(data),
        headers: new Headers({
            'Content-Type': 'application/json'
        })
    }).then(res => res.ok)
        .catch(error => console.error('Error:', error))
        .then(response => console.log('Success'));
}

loadStatement("balance_sheet", "AAPL", 2017); 
console.log("finished");
