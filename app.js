 const http = require('http');
 const fs = require('fs');
 const routes = require('./routes');

 const server = http.createServer(
 routes.requestHandler(req, res)
 );

server.listen(3801)