"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const http = require("http");

const PORT = 3000;
const VERSION = process.env.NAPP_VERSION ? process.env.NAPP_VERSION : "0.0.0";

(async () => {
    const server = await http.createServer(incoming);
    server.listen(PORT, () => {
        console.log(`Server listening on: ${PORT}`);
    });
})();

function incoming(req, res) {
    res.setHeader('Content-Type', 'application/json');
    switch (req.url) {
        case '/': {
            if (req.method === 'GET') {
                res.end(JSON.stringify({ msg: 'pong' }));
            }
            break;
        }
        case '/hello': {
            if (req.method === 'GET') {
                res.end(JSON.stringify({ msg: 'Hello :)' }));
            }
            break;
        }
        case '/info': {
            if (req.method === 'GET') {
                res.end(JSON.stringify({ version: `${VERSION}` }));
            }
            break;
        }
        default: {
            res.statusCode = 404;
            res.end();
        }
    }
}
