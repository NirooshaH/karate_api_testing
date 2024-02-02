Feature: GET API header feature

Scenario: pass the user request with header part-1

Given header Content-Type = 'application/json; charset=utf-8'
And header Connection = 'keep-alive'
And header Accept-Encoding = 'gzip, deflate, br'
And header User-Agent = 'PostmanRuntime/7.36.1'
And header Authorization = 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363'

When url 'https://gorest.co.in/public/v1/users'
And path '/6131214'
When method GET
Then status 200
* print response

Scenario: pass the user request with header-part-2

* def request_headers = { Content-Type: 'application/json; charset=utf-8', Connection: 'keep-alive',Accept-Encoding: 'gzip, deflate, br',  User-Agent: 'PostmanRuntime/7.36.1',  Authorization: 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363'  }
Given headers request_headers
When url 'https://gorest.co.in/public/v1/users'
And path '6131214'
When method GET
Then status 200
* print response

Scenario: pass the user request with header-part-3

* configure headers = { Content-Type: 'application/json; charset=utf-8', Connection: 'keep-alive',Accept-Encoding: 'gzip, deflate, br',  User-Agent: 'PostmanRuntime/7.36.1',  Authorization: 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363'  }
When url 'https://gorest.co.in/public/v1/users'
And path '6131214'
When method GET
Then status 200
* print response 