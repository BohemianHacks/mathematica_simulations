'use strict';

const step1 = require("./filtermaster.js");

const fs = require("fs");

const rawmaster = fs.readFileSync('newlist.json');
const master = JSON.parse(rawmaster);
const rawmanual = fs.readFileSync('manuallist.json');
const manualvideos = JSON.parse(rawmanual);

const heirarchy = {};

for ( let i = 0; i < master.length; i++ ) {
  const video = master[i];
  const course = video["COURSE"];

  // Create objects whose key is the course name
  if (typeof(heirarchy[ course ]) == "undefined") {
    heirarchy[ course ] = {};
  }

  const page = heirarchy[ course ];

  if (video.TOPIC !== "") {
    const topic = video.TOPIC;

    if (video.SUBTOPIC !== "") {
      
      // FOR COURSES WITH SUBTOPICS
      if ( typeof( page[ topic ] ) == "undefined" ) {
        page[ topic ] = {};
      }
      
      if ( typeof( page[ topic ][`${video.SUBTOPIC}`] ) == "undefined" ) {
        page[ topic ][`${video.SUBTOPIC}`] = [];
        page[ topic ][`${video.SUBTOPIC}`].push(video);
      } else {
        page[ topic ][`${video.SUBTOPIC}`].push(video);
      }

    } else {
      // FOR COURSES WITH JUST TOPICS
      if ( typeof( page[ topic ] ) == "undefined" ) {
        page[ topic ] = [];
      }

      page[ topic ].push(video);
    }

  } else {
    manualvideos.push(video);
  }
}

const videoJSON = JSON.stringify(heirarchy);
const manualJSON = JSON.stringify(manualvideos);

fs.writeFileSync('heirarchy.json', videoJSON);
fs.writeFileSync('manuallist.json', manualJSON);

// Now, parse the heirarchy and spit out an array with "COURSE", "TOPIC", "SUBTOPIC", "HTML" as the properties of each object

const accordionDropdowns = [];

function HTML(arr) {
  let html = `<ul class="accordion-link-list">`;
  for (let i = 0; i < arr.length; i++) {
    const video = arr[i];
    html += `<li class="accordion-link-list-item">`;
    html += `<a href="https://www.youtube.com/watch?v=${video.ID}" target="_blank" class="accordion-link" description="${video.DESCRIPTION}">${video.TITLE}</a>`;
    html += `</li>`;
  }
  html += `</ul>`;
  return html;
}

const courses = Object.keys(heirarchy);

for ( let i = 0; i < courses.length; i++ ) {
  const course = courses[i];
  const courseObject = heirarchy[course];

  const topics = Object.keys(courseObject);

  for ( let j = 0; j < topics.length; j++ ) {

    const topic = topics[j];
    const topicObject = courseObject[ topic ]

    if ( Array.isArray( topicObject ) ) {

      accordionDropdowns.push({
        COURSE: course,
        TOPIC: topic,
        SUBTOPIC: "None",
        HTML: HTML(topicObject),
      });

    } else {

      const subtopics = Object.keys(topicObject);
      
      for ( let k = 0; k < subtopics.length; k++ ) {

        const subtopic = subtopics[k];
        const subtopicArray = topicObject[ subtopic ];

        accordionDropdowns.push({
          COURSE: course,
          TOPIC: topic,
          SUBTOPIC: subtopic,
          HTML: HTML(subtopicArray)
        });
      }

    }

  }

}

const sorted = JSON.stringify(accordionDropdowns);
fs.writeFileSync('sorted.json', sorted);
