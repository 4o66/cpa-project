var button = document.getElementById("analyze-button");
var companySelect = document.getElementById("company-select");
var ratioSelect = document.getElementById("ratio-select");
var company = companySelect.options[companySelect.selectedIndex].value;
var ratio = ratioSelect.options[ratioSelect.selectedIndex].value;
button.addEventListener('click', () => {
    window.location.replace("Analysis?company_id=" + company +
        "&ratio_id=" + ratio);
});

companySelect.addEventListener('change', () => {
    company = companySelect.options[companySelect.selectedIndex].value;
    console.log(company);
});

ratioSelect.addEventListener( 'change', () => {
    ratio = ratioSelect.options[ratioSelect.selectedIndex].value;
    console.log(ratio);
});

//onload for graph
var request = new XMLHttpRequest();
request.open('GET', 'api/GetRatios?company_id=' + company +
        "&ratio_id=" + ratio, true);

request.onload = function () {
    if (request.status >= 200 && request.status < 400) {
        var calculatedRatios = JSON.parse(request.responseText);
        console.log(calculatedRatios);
        loadGraph(calculatedRatios);
    } else {
       alert("error retrieving ratios.")
    }
};

request.onerror = function () {
    alert("error");
};

request.send();
function loadGraph(calculatedRatios) {
    var years = [];
    var values = [];
    console.log(calculatedRatios);
    calculatedRatios.forEach((e) => {
        console.log(e);
        years.push(e['year']);
        values.push(e['value']);
    });
    console.log(years);
    console.log(values);
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: years,
            datasets: [{
                label: 'Ratio',
                data: values,
                backgroundColor: [
                    'rgba(75, 192, 192, 0.7)',
                    'rgba(153, 102, 255, 0.7)',
                    'rgba(255, 159, 64, 0.7)'
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 2
            }]
        },
        options: {
            legend: {
                labels: {
                    fontColor: '#EEEEEE'
                }
            },
            gridLines: {
                color: '#EEEEEE'
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontColor: '#EEEEEE'
                    },
                    gridLines: {
                        color: '#EEEEEE'
                    },
                    scaleLabel: {
                        fontColor: '#EEEEEE'
                    }
                }],
                xAxes: [{
                    ticks: {
                        fontColor: '#EEEEEE'
                    },
                    gridLines: {
                        color: '#EEEEEE'
                    }
                }]

            }
        }
    });
}