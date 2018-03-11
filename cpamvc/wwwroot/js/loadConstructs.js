

function getToken() {
    var username = "3b264586439c0c3af05fa5c857aa9a95";
    var password = "e35b17d041dfb51c209012248750ae54";
    var token = username + ":" + password;
    var hash = btoa(token);
    return hash;
}

function loadConstructs(statementName, ticker) {
    var hash = getToken();
    var req = new XMLHttpRequest();
    req.open('GET', 'https://api.intrinio.com/tags/standardized?identifier=' + ticker + '&statement=' + statementName, true);
    req.setRequestHeader("Authorization", "Basic " + hash);
    req.send();
    //Send data to add constructs post in order to load to db
    req.onreadystatechange = function processRequest(e) {
        if (req.readyState == 4) {
            var response = JSON.parse(req.responseText);
            console.log(response);
            var url = './LoadData/AddConstructs';
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

function loadStatement(statementName, companyName, ticker, year) {
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
                    'symbol': ticker,
                    'name': companyName
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



/*******       INSTRUCTIONS
    
                To add a Company and its financial statements, uncomment the
                lines below, and replace 'MU' with the
                company's ticker, and 'Micron' with the company's name. Then run
                the application and go to /LoadConstructs and wait a few minutes while they load.
                You may need to replace the credentials up top if they expire. If they do, register for
                a free trial at Intrinio.com and replace them with your new credentials                   *********/
    

//loadConstructs('balance_sheet', 'MU');
//loadConstructs('income_statement', 'MU');
//loadStatement('income_statement', 'Micron', 'MU', 2017);
//loadStatement('income_statement', 'Micron','MU', 2016);
//loadStatement('income_statement', 'Micron', 'MU', 2015);
//loadStatement('income_statement', 'Micron', 'MU', 2014);
//loadStatement('balance_sheet', 'Micron' , 'MU', 2017);
//loadStatement('balance_sheet','Micron', 'MU', 2016);
//loadStatement('balance_sheet', 'Micron', 'MU', 2015);
//loadStatement('balance_sheet', 'Micron', 'MU', 2014);

console.log("finished");
