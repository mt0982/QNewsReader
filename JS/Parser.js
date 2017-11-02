//https://newsapi.org/
//https://newsapi.org/hacker-news-api
//https://newsapi.org/techcrunch-api

function parseCategories() {

    page0.listModel.clear()

    var request = new XMLHttpRequest;
    request.open("GET", "https://newsapi.org/v1/sources");

    request.onreadystatechange = function() {
        if (request.readyState === XMLHttpRequest.DONE) {
            var json = JSON.parse(request.responseText);

            var categoriesCount = json.sources.length

            for (var i = 0; i < categoriesCount; i++) {

                var categoryName = json.sources[i].name
                var categoryID = json.sources[i].id
                var categorySection = json.sources[i].category

                page0.listModel.append({
                                           "categoryName" : categoryName,
                                           "categoryID" : categoryID,
                                           "categorySection" : categorySection,
                                           "sortAvailable": json.sources[i].sortBysAvailable.length
                                       })
            }
        }
    }

    request.send()
}

function parseJSON(id, type) {

    page1.listModel.clear()

    var APIKey = "824b725c4c2441358d515b5c2f3461f0";
    var request = new XMLHttpRequest;
    request.open("GET", "https://newsapi.org/v1/articles?source=" + id + "&sortBy=" + type + "&apiKey=" + APIKey);

    request.onreadystatechange = function() {
        if (request.readyState === XMLHttpRequest.DONE) {
            var json = JSON.parse(request.responseText);
            //console.log(json)

            var articleCount = json.articles.length

            for (var i = 0; i < articleCount; i++) {

                var urlToImage = json.articles[i].urlToImage
                var title = json.articles[i].title
                var description = json.articles[i].description
                var webURL = json.articles[i].url
                //console.log(webURL)

                page1.listModel.append({
                                           "image" : urlToImage,
                                           "title" : title,
                                           "description" : description,
                                           "webURL" : webURL
                                       })
            }
        }
    }

    request.send();
}
