Feature: Get api request
Scenario: Get user details

Given url 'https://gorest.co.in/public/v1/users/'
And path '6131214'
And header Authorization = 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363'
When method GET
Then status 200
* print response
* print jsonobject = response
* print jsonobject
* print jsonobject.meta
* print jsonobject.data
* print jsonobject.data.name

Scenario: Get the user detail which is not present

Given url 'https://gorest.co.in/public/v1/users'
And path '1'
When method GET
Then status 404
* print response 
* print response.meta