//https://newsapi.org/
//https://newsapi.org/hacker-news-api
//https://newsapi.org/techcrunch-api

function parseJSON() {

    var APIKey = "824b725c4c2441358d515b5c2f3461f0";
    var request = new XMLHttpRequest;
    request.open("GET", "https://newsapi.org/v1/articles?source=techcrunch&sortBy=top&apiKey=" + APIKey);

    request.onreadystatechange = function() {
        if (request.readyState === XMLHttpRequest.DONE) {
            var json = JSON.parse(request.responseText);
            //console.log(json)

            var articleCount = json.articles.length

            for (var i = 0; i < articleCount; i++) {

                var urlToImage = json.articles[i].urlToImage
                var title = json.articles[i].title
                var description = json.articles[i].description
                //console.log(urlToImage)

                page1.listModel.append({
                                           "image" : urlToImage,
                                           "title" : title,
                                           "description" : description
                                       })

            }

            //console.log(json.results[0].artistName)

//            for (var i = 0; i < json.resultCount; i++) {

//                var artistName = json.results[i].artistName
//                var imageURL = json.results[i].artworkUrl100
//                var trackName = json.results[i].trackName
//                var collectionName = json.results[i].collectionName
//                var kind = json.results[i].kind

//                pageFirst.listModel.append({
//                                               "name" : artistName,
//                                               "imageURL" : imageURL,
//                                               "trackName" : trackName,
//                                               "collectionName" : collectionName,
//                                               "kind" : kind
//                                           })
//            }
        }
    }
    request.send();
}
