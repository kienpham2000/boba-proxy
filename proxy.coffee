http_proxy = require 'http-proxy'

# settings:
proxy_port = process.env.NODE_PROXY_PORT or 8000

ENV = process.env.NODE_ENV or 'prod'

config = require './config/' + ENV

proxy_server = http_proxy.createServer(config)
proxy_server.listen(proxy_port)

console.log 'Boba Proxy is listening on port ' + proxy_port
console.log 'Environment ' + ENV