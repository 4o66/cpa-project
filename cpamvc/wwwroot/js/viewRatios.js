var selectRatio = document.getElementById('select-ratio');
selectRatio.addEventListener('change', () => {
    var id = selectRatio.options[selectRatio.selectedIndex].value;
    var url = (window.location.href.indexOf('cpamvc') > -1) ? '/cpamvc/ViewRatios?ratio_id=' + id
        : '/ViewRatios?ratio_id=' + id;
    window.location.href = url;
});

function deleteRatio(id) {
    return fetch(`./ViewRatios/DeleteRatio?id=${id}`, {
        method: 'delete'
    }).then(response => {
        if (response.status == 200) {
            alert("Successfully Deleted");
            window.location.replace("./ViewRatios")
        }
        else
            alert("Ratio was not deleted. Error: " + response);
    });
}