require "open-uri"

#如果有GET请求参数直接写在URI地址中
uri = 'http://www.baidu.com'
html_response = nil
open(uri) do |http|
  html_response = http.read
end
puts html_response
