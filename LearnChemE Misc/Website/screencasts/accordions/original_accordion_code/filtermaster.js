'use strict';

const fs = require("fs");

const rawdata = fs.readFileSync('masterlist.json');
const master = JSON.parse(rawdata);

const videos = [];

const manualVideos = [];

for ( let i = 0; i < master.length; i++ ) {
  const video = master[i];

  const abridged = {
    COURSE: video.COURSE,
    TOPIC: video.TOPICS,
    SUBTOPIC: video.SUBTOPIC,
    TITLE: video["SCREENCAST TITLE"],
    DESCRIPTION: video.DESCRIPTION,
    ID: video.URL,
  }

  if (abridged.ID.length == 11) {
    videos.push(abridged);
  } else if (abridged.ID.length > 0) {
    manualVideos.push(abridged);
  }
}

const videoJSON = JSON.stringify(videos);
const manualJSON = JSON.stringify(manualVideos);

fs.writeFileSync('newlist.json', videoJSON);
fs.writeFileSync('manuallist.json', manualJSON);