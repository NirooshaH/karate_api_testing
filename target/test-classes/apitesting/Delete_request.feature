Feature: Create user using post api

Background:
	* url 'https://gorest.co.in'

	* def random_string = 
	"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
	"""
	* def randomString = random_string(10)
	* print randomString
	
	* def requestPayload = 
	"""
	{
        "name": "tom",
        "gender": "male",
        "status": "active"
    }	
	"""
	 # * requestPayload.email = randomString + "@gmail.com"
	  * set requestPayload.email = randomString + "@gmail.com"
	  
    * print requestPayload
	
Scenario: Create a user with the given data
Given path '/public/v1/users'	
And request requestPayload
And header Authorization = 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363' 
When method post
Then status 201

* print response
And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.name == 'tom'
And match $.data.email == requestPayload.email

# fetch the user id from the response
* def userid = $.data.id
* print userid

# dete the same user
Given path  '/public/v1/users/' + userid
And header Authorization = 'Bearer 9cedb15f5d0f79d52cb1ab5f3d57e6b1a6d63349d90d0aebb83fb13cec3dc363'
When method delete 
Then status 204

# get the same user using the get request
Given path  '/public/v1/users/' + userid
When method get 
Then status 404  
And match $.data.message == 'Resource not found'