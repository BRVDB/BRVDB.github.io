var express = require("express");
var bodyParser = require("body-parser");
var path = require("path");

var app = express();
var PORT = 3000;

app.use(bodyParser.json());
// app.use(url.encoded({extended: true }))
app.use(bodyParser.text())
app.use(bodyParser.json({type: 'application/vnd+api'}));

app.use(express.static('app'));

// req('./app/routing/api-routes.js')(app);
// req('./app/routing/api-html.js')(app);

app.listen(PORT, function() {
    console.log("App listening on PORT " + PORT);
  });