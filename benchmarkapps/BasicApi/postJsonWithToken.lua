-- script that retrieves an authentication token to send in all future requests and adds a body for those requests
-- keep this file and getWithToken.lua in sync with respect to token handling
function init(args)
    wrk.method = "POST"
    wrk.body = [[
{
  "category": {
    "name": "Cats"
  },
  "images": [
    {
        "url": "http://example.com/images/fluffy1.png"
    },
    {
        "url": "http://example.com/images/fluffy2.png"
    }
  ],
  "tags": [
    {
        "name": "orange"
    },
    {
        "name": "kitty"
    }
  ],
  "age": 2,
  "hasVaccinations": "true",
  "name": "fluffy",
  "status": "available"
}]]
    wrk.headers["Content-Type"] = "application/json"
    req = wrk.format()
end    

function request()
    return req
end

