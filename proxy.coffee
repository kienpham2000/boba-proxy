http_proxy = require 'http-proxy'

# settings:
proxy_port = process.env.PROXY_PORT or 8080

proxy_options = router:
    'kienpham.com': '127.0.0.1:2000',
    'hotelx.co': '127.0.0.1:3000',
    'happyshadowstudio.com': '127.0.0.1:3001',
    'fionabakery.com': '127.0.0.1:3002',
    'anchoinhaymua.com': '127.0.0.1:3003'

proxy_server = http_proxy.createServer(proxy_options)
proxy_server.listen(proxy_port)

console.log 'Boba Proxy is listening on port ' + proxy_port