var form = document.getElementById('addArticleForm');

document.getElementById('submitArticle').addEventListener('click', sendArticle);

function sendArticle() {
    if (articleIsFilled()) {
        var article = getArticle();
        postArticle(article);
    }
}

function getArticle() {
    var article = {
        'company_id': form.elements['company'].value,
        'source': form.elements['source'].value,
        'url': form.elements['url'].value,
        'date': form.elements['day'].value + ' ' + form.elements['month'].value
        + ' ' + form.elements['year'].value,
        'body': form.elements['text'].value,
        'title': form.elements['title'].value
    }
    return article;
}

function articleIsFilled() {
    for (var i = 0; i < form.elements.length; i++) {
        if (form.elements[i].value === '' && form.elements[i].hasAttribute('required')) {
            alert('There are some required fields!');
            return false;
        }
    }
    return true;

}

function postArticle(article) {
    console.log('sending article: ');
    console.log(article);
    var url = 'AddSource/AddArticle';


    fetch(url, {
        method: 'POST',
        body: JSON.stringify(article),
        headers: new Headers({
            'Content-Type': 'application/json'
        })
    }).then(res => res.ok)
        .catch(error => alert('Error:', error))
        .then(response => {
            alert('Success')
        });

}