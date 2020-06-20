const http = require('http');
const os = require('os');
console.log("Kubia jim server starting..."+ (new  Date()).toUTCString() ) ;
//only add time to log for check restarts timing
var requestCount = 0;

var handler = function(request, response) {
  console.log( (new  Date()).toUTCString() +" Received request from " + request.connection.remoteAddress);
  requestCount++;
  if (requestCount > 5) {
    response.writeHead(500);
    response.end( (new  Date()).toUTCString() + " I'm not well. Please restart me!");
    return;
  }
  response.writeHead(200);
  response.end( (new  Date()).toUTCString() +" You've hit " + os.hostname() + "\n");
};

var www = http.createServer(handler);
www.listen(8080);