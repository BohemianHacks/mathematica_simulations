const getVideo = function() {
  const id = document.getElementById("id-input").value;
  fetch('/download', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({"id" : id}),
  }).then(response => {
    return response.body
  }).then(body => {
    const reader = body.getReader();
    return new ReadableStream({
      start(controller) {
        return pump();
        function pump() {
          return reader.read().then(({ done, value }) => {
            // When no more data needs to be consumed, close the stream
            if (done) {
                controller.close();
                return;
            }
            // Enqueue the next data chunk into our target stream
            controller.enqueue(value);
            return pump();
          });
        }
      }  
    })
  })
  .then(stream => new Response(stream))
  .then(response => response.blob())
  .then(blob => URL.createObjectURL(blob))
  .then(url => {
    const a = document.createElement("a");
    a.textContent = 'video/mp4';
    a.setAttribute("href", url);
    a.style.display = "none";
    a.setAttribute("download", "video.mp4");
    document.body.appendChild(a);
    a.click();
  });

}

document.getElementById("fetch-button").addEventListener("click", getVideo);