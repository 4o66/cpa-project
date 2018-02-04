var companyDrop = document.getElementById("inlineFormCustomSelect");

var incomeTab = document.getElementById("income-tab");
var balanceTab = document.getElementById("balance-tab");
incomeTab.addEventListener('click', () => {
    goToSheet('income_statement');
});
balanceTab.addEventListener('click', () => {
    goToSheet('balance_sheet');
});

companyDrop.addEventListener('change', () => {
    var cID = companyDrop.options[companyDrop.selectedIndex].value;
    console.log("Company selected: " + cID);
    goToCompany(cID)
});

function goToCompany(company_id) {
    var url = (window.location.href.indexOf('cpamvc') > -1) ? '/cpamvc/Statements?company_id=' + company_id
        : '/Statements?company_id=' + company_id;
        window.location.href = url;
}
function goToSheet(statement_name) {
    var url = window.location.href;
    if (url.indexOf('statement_name') > -1) {
        url = url.replace(/(statement_name=)[^\&]+/, '$1' + statement_name);
    }
    else {
        var seperator = (url.indexOf('?') > -1) ? '&' : '?';
        url = window.location.href + seperator + 'statement_name=' + statement_name;
    }
    window.location.href = url;
}