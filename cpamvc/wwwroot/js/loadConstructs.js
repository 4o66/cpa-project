

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
    req.open('GET', 'https://api.intrinio.com/tags/standardized?statement=' + statementName, true);
    req.setRequestHeader("Authorization", "Basic " + hash);
    req.send();
    //Send data to add constructs post in order to load to db
    req.onreadystatechange = function processRequest(e) {
        if (req.readyState == 4) {
            var response = JSON.parse(req.responseText);
            console.log(response);
            var url = 'LoadData/AddConstructs';
            var data = response.data;
            var constructs = [];
            data.forEach(function (ele) {
                var construct = {
                    'name': ele.name,
                    'tag': ele.tag
                };
                constructs.push(construct);
            })
            loadToDb(url, constructs);
         }
     }
}

function loadStatement(statementName, ticker, year) {
    var hash = getToken();
    var req = new XMLHttpRequest();
    console.log(year);
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
            var statementObj = {
                'company': {
                    'symbol': ticker
                },
                'name': statementName,
                'statement-details': statement,
                'year': year,
                'quarter': 0
            };
            console.log(statementObj);
            loadToDb(url, statementObj);
        }
    }
}

function loadToDb(url, statementObj) {
    fetch(url, {
        method: 'POST',
        body: JSON.stringify(statementObj),
        headers: new Headers({
            'Content-Type': 'application/json'
        })
    }).then(res => res.ok)
        .catch(error => console.error('Error:', error))
        .then(response => console.log('Success'));
}

//loadStatement('income_statement', 'AAPL', 2017);
//loadStatement('income_statement', 'AAPL', 2016);
//loadStatement('income_statement', 'AAPL', 2015);
//loadStatement('income_statement', 'AAPL', 2014);
//loadStatement('balance_sheet', 'AAPL', 2017);
//loadStatement('balance_sheet', 'AAPL', 2016);
//loadStatement('balance_sheet', 'AAPL', 2015);
//loadStatement('balance_sheet', 'AAPL', 2014);
//loadStatement('income_statement', 'AMZN', 2017);
//loadStatement('income_statement', 'AMZN', 2016);
//loadStatement('income_statement', 'AMZN', 2015);
//loadStatement('income_statement', 'AMZN', 2014);
//loadStatement('balance_sheet', 'AMZN', 2017);
//loadStatement('balance_sheet', 'AMZN', 2016);
//loadStatement('balance_sheet', 'AMZN', 2015);
//loadStatement('balance_sheet', 'AMZN', 2014);
//loadStatement('income_statement', 'COST', 2017);
//loadStatement('income_statement', 'COST', 2016);
//loadStatement('income_statement', 'COST', 2015);
//loadStatement('income_statement', 'COST', 2014);
//loadStatement('balance_sheet', 'COST', 2017);
//loadStatement('balance_sheet', 'COST', 2016);
//loadStatement('balance_sheet', 'COST', 2015);
//loadStatement('balance_sheet', 'COST', 2014);


console.log("finished");
