require 'httparty'
require 'pry'
require './token'

def close_issue
body = {state: "closed"}.to_json
HTTParty.patch(
"https://api.github.com/repos/tiyd-ror-2016-06/class-notes/issues/6",
headers: {
"Authorization" => "token #{@token}",
"User-Agent" => "Mr. Robot"
},
body: body
)
end

def add_comment
body = {body: File.read(FILE)}.to_json
HTTParty.post(
"https://api.github.com/repos/tiyd-ror-2016-06/class-notes/issues/6/comments",
headers: {
"Authorization" => "token #{@token}",
"User-Agent" => "Mr. Robot"
},
body: body
)
end

close_issue
add_comment