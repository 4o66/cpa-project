var form = document.getElementById('objectForm');

document.getElementById('submitObject').addEventListener('click', sendArticle);

function sendArticle() {
    if (objectIsFilled()) {
        var newObject = getObject();
        postObject(newObject);//sdfsd
    }
}

function getObject() {
    var newObject = {
        'name': form.elements['object-form-1'].value,
        'plural': form.elements['object-form-1'].value + 's',
        'type': form.elements['typeradio'].value,
        'abreviation': ''
    }
    return newObject;
}

function objectIsFilled() {
    for (var i = 0; i < form.elements.length; i++) {
        if (form.elements[i].value === '' && form.elements[i].hasAttribute('required')) {
            alert('There are some required fields!');
            return false;
        }
    }
    return true;

}

function postObject(newObject) {
    console.log(newObject);
    var url = 'ObjectCreation/AddObject';


    fetch(url, {
        method: 'POST',
        body: JSON.stringify(newObject),
        headers: new Headers({
            'Content-Type': 'application/json'
        })
    }).then(res => res.ok)
        .catch(error => alert('Error:', error))
        .then(response => {
            alert('Success')
        });

}