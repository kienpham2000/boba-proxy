http_proxy = require 'http-proxy'

# settings:
proxy_port = process.env.NODE_PROXY_PORT or 80

if process.env.NODE_ENV == 'prod'
	proxy_options = router:
	    'kienpham.com': '127.0.0.1:2000',
      'www.kienpham.com': '127.0.0.1:2000',
	    'hotelx.co': '127.0.0.1:3000',
      'www.hotelx.co': '127.0.0.1:3000',
	    'happyshadowstudio.com': '127.0.0.1:3001',
      'www.happyshadowstudio.com': '127.0.0.1:3001',
	    'fionabakery.com': '127.0.0.1:3002',
      'www.fionabakery.com': '127.0.0.1:3002',
	    'anchoinhaymua.com': '127.0.0.1:3003'
      'www.anchoinhaymua.com': '127.0.0.1:3003'
else
	proxy_options = router:
	    'kienpham.dev': '127.0.0.1:2000',
	    'hotelx.dev': '127.0.0.1:3000',
	    'happyshadowstudio.dev': '127.0.0.1:3001',
	    'fionabakery.dev': '127.0.0.1:3002',
	    'anchoinhaymua.dev': '127.0.0.1:3003'

proxy_server = http_proxy.createServer(proxy_options)
proxy_server.listen(proxy_port)

console.log 'Boba Proxy is listening on port ' + proxy_port
console.log 'Environment ' + process.env.NODE_ENV