const fs = require('fs');
const request = require('superagent');
const util = require('util');
const setTimeoutPromise = util.promisify(setTimeout);
let output = {};

fs.readFile('output.json', 'utf8', function(err, data) {
  if(err) throw err;
  else {
    let json = JSON.parse(data);
    let keys = Object.keys(json);
    let imax = keys.length;
    for(let i = 1100; i < imax; i++) {
        let id = keys[i];
        output[id] = {};
        output[id].URL = json[id].URL;
        output[id].image0 = json[id].imageURL;
        setTimeoutPromise(i * 2000, {output, id, i, imax}).then((object) => {
            (async (youtubeVideoId) => {
                const response = await request
                    .get('https://www.googleapis.com/youtube/v3/videos')
                    .query({key: "AIzaSyB6wqdt7Cyr-LN2KIaEzhHSlDvDvwS4DDY"})
                    .query({id: object.id})
                    .query({part: 'snippet,contentDetails,statistics,status'});
                
                let items = response.body.items[0];
                object.output[object.id].title = items.snippet.title;
                object.output[object.id].tags = items.snippet.tags;
                object.output[object.id].description = items.snippet.description;
                object.output[object.id].imageHD = items.snippet.thumbnails.standard;
                console.log(object.i);
                fs.writeFile("output2.json", JSON.stringify(object.output), "utf-8", function (err, data) {if(err) {return console.log(err)}});
            })()
        })
        
    }
  }
})

