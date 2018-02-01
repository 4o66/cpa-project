// Write your JavaScript code.
function updateCustomDescription() {
    $('.customRatioTop').text(getOptionsString('sbNum'));
    $('.customRatioBottom').text(getOptionsString('sbDem'));
}

function getOptionsString(selectID) {
    var options = $('#' + selectID + ' option').clone();
    var optionsString = '';
    $.each(options, function (ele) {
        optionsString += options[ele].innerHTML;
    });
    return optionsString;
}

$('#numPlus').on('click', function () {
    var options = $('#sbOne option:selected').clone();
    $.each(options, function (ele) {
        options[ele].innerHTML = ' + ' + options[ele].innerHTML;
    });
    $('#sbNum').append(options);
    // $('.customRatioTop').text(getOptionsString('sbNum'));
    updateCustomDescription();
});
$('#numMinus').on('click', function () {
    var options = $('#sbOne option:selected').clone();
    $.each(options, function (ele) {
        options[ele].innerHTML = ' - ' + options[ele].innerHTML;
    });
    $('#sbNum').append(options);
    updateCustomDescription();
});
$('#denominatorPlus').on('click', function () {
    var options = $('#sbOne option:selected').clone();
    $.each(options, function (ele) {
        options[ele].innerHTML = ' + ' + options[ele].innerHTML;
    });
    $('#sbDem').append(options);
    updateCustomDescription();
});
$('#denominatorMinus').on('click', function () {
    var options = $('#sbOne option:selected').clone();
    $.each(options, function (ele) {
        options[ele].innerHTML = ' - ' + options[ele].innerHTML;
    });
    $('#sbDem').append(options);
    updateCustomDescription();
});
$('#remove').on('click', function () {
    $('select.newRatioSelect option:selected').remove();
    updateCustomDescription();
});

$('#removeAll').on('click', function () {
    $('select.newRatioSelect').empty();
    updateCustomDescription();
});

$('#save-ratio').on('click', submitRatio);

function submitRatio() {
    var numList = document.querySelectorAll('#sbNum option');
    var numObjList = [];
    Array.from(numList, (ele) => {
        let innerText = ele.innerHTML;
        let operator = (innerText.indexOf("+") > -1) ? '+' : '-';
        let obj = {
            'id': ele.value,
            'operator': operator
        };
        numObjList.push(obj);
    });
    console.log(numObjList);

}