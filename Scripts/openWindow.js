function openWindow(title, description) {
  var win = window.open("", "_blank");
  win.document.title = title;

  var style = win.document.createElement('style');
  style.innerHTML = `
    body {
      background-color: #888888;
      color: #000000;
      font-family: Arial, sans-serif;
      margin: 0;
    }
    h1 {
      text-align: center;
      color: #000000;
      margin: 20px;
    }
    p {
      text-align: center;
      margin: 20px;
    }
  `;
  win.document.head.appendChild(style);

  var body = win.document.createElement('body');
  var h1 = win.document.createElement('h1');
  h1.innerHTML = title;
  var p = win.document.createElement('p');
  p.innerHTML = description;

  body.appendChild(h1);
  body.appendChild(p);

  win.document.body = body;
}

function openWindowWithVideo(title, description, videoId) {
  var win = window.open("", "_blank");
  win.document.title = title;

  var style = win.document.createElement('style');
  style.innerHTML = `
    body {
      background-color: #888888;
      color: #000000;
      font-family: Arial, sans-serif;
      margin: 0;
    }
    .video-container {
      position: relative;
      padding-bottom: 56.25%;
      height: 0;
      overflow: hidden;
    }
    .video-container iframe {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
    h1 {
      text-align: center;
      color: #000000;
      margin: 20px;
    }
    p {
      text-align: center;
      margin: 20px;
    }
  `;
  win.document.head.appendChild(style);

  var body = win.document.createElement('body');
  var h1 = win.document.createElement('h1');
  h1.innerHTML = title;
  var p = win.document.createElement('p');
  p.innerHTML = description;
  var videoContainer = win.document.createElement('div');
  videoContainer.className = 'video-container';
  videoContainer.innerHTML = `
    <iframe
      width="560"
      height="315"
      src="https://www.youtube.com/embed/${videoId}"
      frameborder="0"
      allowfullscreen
    ></iframe>
  `;

  body.appendChild(h1);
  body.appendChild(p);
  body.appendChild(videoContainer);

  win.document.body = body;
}
