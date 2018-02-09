var button = document.getElementById("analyze-button");
var companySelect = document.getElementById("company-select");
var ratioSelect = document.getElementById("ratio-select");
var company = companySelect.options[companySelect.selectedIndex].value;
var ratio = ratioSelect.options[ratioSelect.selectedIndex].value;
button.addEventListener('click', () => {
    window.location.href = "/Analysis?company_id=" + company +
        "ratio_id=" + ratio
});

companySelect.onchange = () => {
    companySelect.options[companySelect.selectedIndex].value;
};

ratioSelect.onchange = () => {
    ratioSelect.options[ratioSelect.selectedIndex].value;
};
