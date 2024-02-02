Feature: Create user using post api

Background:
	* url 'https://gorest.co.in'
	* def requestPayload = 
	"""
	{
        "name": "ashish14",
        "email": "ashish14@gmail.com",
        "gender": "male",
        "status": "active"
    }
	
	"""
Scenario: Create a user with the given data
Given path '/public/v1/users'	
And request requestPayload
And header Authorization = 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363' 
When method post
Then status 201
And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.name == 'ashish14'
And match $.data.email == 'ashish14@gmail.com'