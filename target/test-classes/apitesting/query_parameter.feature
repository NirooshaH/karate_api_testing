Feature: Get api with query parameter
Scenario: get all active users & some specific
* def query = {status:'active', gender:'female'}
Given url "https://gorest.co.in/public/v1/users"
And params query
When method GET
Then status 200
* print response
* print response.data[0].id
* print response.data[4].name

Scenario: Get all the inactive users and users count

* def query = {status:'inactive', gender:'female'}
Given url "https://gorest.co.in/public/v1/users"
And params query
When method GET
Then status 200
* def jsonresponse = response
* print jsonresponse
* print jsonresponse.data[0].id
* print jsonresponse.data[4].name
* def usercount = jsonresponse.data.length
* print usercount
* match usercount == 10