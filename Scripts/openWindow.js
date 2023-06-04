function openSubTab(title, description) {
  var subTab = window.open('', '_blank');
  subTab.document.write(`
    <html>
    <head>
      <title>${title}</title>
      <style>
        body {
          background-color: #888888;
          color: #000000;
          font-family: Arial, sans-serif;
        }
        h1 {
          text-align: center;
        }
        p {
          text-align: center;
          margin: 20px;
        }
      </style>
    </head>
    <body>
      <h1>${title}</h1>
      <p>${description}</p>
    </body>
    </html>
  `);
  subTab.document.close();
}
function openSubTabVideo(title, description, videoId) {
  var subTab = window.open('', '_blank');
  subTab.document.write(`
    <html>
    <head>
      <title>${title}</title>
      <style>
        body {
          background-color: #888888;
          color: #000000;
          font-family: Arial, sans-serif;
        }
        h1 {
          text-align: center;
        }
        p {
          text-align: center;
          margin: 20px;
        }
        .video-container {
          position: relative;
          padding-bottom: 56.25%;
          padding-top: 30px;
          height: 0;
          overflow: hidden;
        }
        .video-container iframe,
        .video-container object,
        .video-container embed {
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
        }
      </style>
    </head>
    <body>
      <h1>${title}</h1>
      <p>${description}</p>
      <div class="video-container">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/${videoId}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
      </div>
    </body>
    </html>
  `);
  subTab.document.close();
}
