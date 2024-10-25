const youtubedl = require("youtube-dl");
const express = require('express');
const app = express();
const cors = require("cors");
const env = process.env.NODE_ENV || 'development';

let port = process.env.PORT;
if (port == null || port == "") { port = 8000 }

if(env == 'production') {
  const forceSsl = function (req, res, next) {
    if (req.headers['x-forwarded-proto'] !== 'https') {
      return res.redirect(['https://', req.get('Host'), req.url].join(''))
    }
    return next()
  };
  app.use(forceSsl);
}

app.use(cors());
app.use(express.json());
app.use(express.static('public'));

app.post("/download", (req, res) => {
  const body = req.body;
  const videoID = body.id;

  const url = `https://www.youtube.com/watch?v=${videoID}`;
  const video = youtubedl(url, ['--format=18'], { cwd: __dirname });

  video.on('data', function(chunk) {
    res.write(chunk);
  });

  video.on('end', function complete(info) {
    res.status(200).send();
  });

});

app.listen(port, () => {
  console.log(`App listening at port ${port}`);
});