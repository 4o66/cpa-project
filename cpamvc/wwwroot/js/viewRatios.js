var selectRatio = document.getElementById('select-ratio');
selectRatio.addEventListener('change', () => {
    var id = selectRatio.options[selectRatio.selectedIndex].value;
    var url = (window.location.href.indexOf('cpamvc') > -1) ? '/cpamvc/ViewRatios?ratio_id=' + id
        : '/ViewRatios?ratio_id=' + id;
    window.location.href = url;
});