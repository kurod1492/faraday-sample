require 'faraday'

# 公式サイトのサンプル
# response = Faraday.get 'http://sushi.com/nigiri/sake.json'

# [curlコマンドでapiを叩く \- Qiita](https://qiita.com/buntafujikawa/items/758425773b2239feb9a7)
# HTTPヘッダを出力させる
# curl -I "http://zipcloud.ibsnet.co.jp/api/search?zipcode=7830060"

url="http://zipcloud.ibsnet.co.jp/api/search"
response = Faraday.get(url, {zipcode: 7830060})

# HTTPヘッダを出力させる
puts "response.headers #=>", response.headers

# ステータスコードを出力する
puts "response.status #=>", response.status

# ボディを出力する
puts "response.body #=>", response.body
