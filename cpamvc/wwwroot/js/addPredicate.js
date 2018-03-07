var form = document.getElementById('predicate-form');

document.getElementById('save-predicate-button').addEventListener('click', sendPredicate);

function sendPredicate() {
    
        let newPredicate = getPredicate();
        postPredicate(newPredicate);
    
}

function getPredicate() {
    var newObject = {
        'object-a': form.elements['object-a'].value,
        'object-b': form.elements['object-b'].value,
        'type': form.elements['predicate-type-radio'].value
    }
    return newObject;
}


function postPredicate(newObject) {
    console.log(newObject);
    var url = './PredicateCreation/AddPredicate';


    fetch(url, {
        method: 'POST',
        body: JSON.stringify(newObject),
        headers: new Headers({
            'Content-Type': 'application/json'
        })
    }).then(res => res.ok)
        .catch(error => alert('Error:', error))
        .then(response => {
            alert('Success');
        });

}