const http = require("http");

const PORT = 8080;

const server = http.createServer((req, res) => {
    if (req.url === "/") {
        res.writeHead(200, { "Content-Type": "text/plain" });
        res.end("Hello from DevOps Project!");
    } else if (req.url === "/health") {
        res.writeHead(200, { "Content-Type": "text/plain" });
        res.end("Application is healthy");
    } else {
        res.writeHead(404);
        res.end("Not Found");
    }
});

server.listen(PORT, () => {
    console.log(`Application running on port ${PORT}`);
});
