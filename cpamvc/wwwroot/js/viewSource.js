var selectCompany = document.getElementById("sortByCompany");
selectCompany.onchange = companySort;
var sortByOption = document.getElementById("sortByOption");
sortByOption.onchange = sortBy;
function companySort(event) {
    window.location.replace("./ViewSource?company_id=" + event.target.value + "&sortBy=" + sortByOption.value);
}

function sortBy(event) {
    window.location.replace("./ViewSource?company_id=" + selectCompany.value + "&sortBy=" + event.target.value);
}