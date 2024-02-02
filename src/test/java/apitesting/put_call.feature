Feature: update the user using put request
Background:
* url 'https://gorest.co.in/'
* def requestpayload =
"""
{
 "statue" : "active",
 "email" : "karate04@gmail.com"
 
}
"""
Scenario: update a user
Given path '/public/v2/users/6133255'
And request requestpayload
And header Authorization = 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363'
When method put
Then status 200
And match $.data == '#present'
And match $.data.name == '#present'
And match $.data.email == 'karate04@gmail.com'