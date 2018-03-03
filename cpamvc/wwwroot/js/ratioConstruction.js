//Updates the text that shows the formula construction
function updateCustomDescription() {
    document.querySelector('.customRatioTop').innerHTML = getOptionsString('sbNum');
    document.querySelector('.customRatioBottom').innerHTML = getOptionsString('sbDem');
}

//For populating formula text above
function getOptionsString(selectID) {
    var options = $('#' + selectID + ' option').clone();
    var optionsString = '';
    $.each(options, function (ele) {
        optionsString += options[ele].innerHTML;
    });
    return optionsString;
}
//Each click puts selected ratio constructs in their respective place in the pick boxes
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
/**Parses the numerator/denominator box and constructs
  JSON ratio object, which then posts to the ratio construct controller**/
function submitRatio() {
    try {
        let type = document.querySelector('input[name="ratio-type"]:checked').value;
        let numList = document.querySelectorAll('#sbNum option');
        let numObjList = [];
        Array.from(numList, (ele, index) => {
            let innerText = ele.innerHTML;
            let operator = (innerText.indexOf("+") > -1) ? '+' : '-';
            let obj = {
                'id': ele.value,
                'operator': operator,
                'order': index
            };
            numObjList.push(obj);
        });
        let denomiatorList = document.querySelectorAll('#sbDem option');
        let denominatorObjList = [];
        Array.from(denomiatorList, (ele, index) => {
            let innerText = ele.innerHTML;
            let operator = (innerText.indexOf("+") > -1) ? '+' : '-';
            let obj = {
                'id': ele.value,
                'operator': operator,
                'order': index
            };
            denominatorObjList.push(obj);
        });
        let ratioName = document.getElementById('ratio-name-input').value;
        let ratioObj = {

            'name': ratioName,
            'numerator': numObjList,
            'denominator': denominatorObjList,
            'type': type

        }
        console.log(ratioObj);

        //Post to the backend ratio construct controller 
        var url = 'RatioConstruction/AddRatio';
        var data = ratioObj;
        fetch(url, {
            method: 'POST',
            body: JSON.stringify(ratioObj),
            headers: new Headers({
                'Content-Type': 'application/json'
            })
        }).then(res => {
            if (res.ok)
                showSuccessModal();
            else
                showFailureModal("Ratio has already been added or is otherwise invalid");
        })
            .catch(error => { console.error('Error:', error); showFailureModal(error) })
    }
    catch (error) {
        //post failed, show failure dialog
        showFailureModal("Please enter in all values and try again.")
    }
}

function showSuccessModal() {
    $('#success-modal').modal('toggle');
}
function showFailureModal(error) {
    $('#failure-modal').modal('toggle');
    $('#errorText').text(error);
}