Feature: json reader feature
Scenario: json reader parser

* def jsonobject =

"""
[
	{
		"name" : "Niroosha",
		"email" : "hniroosha@gmail.com",
		"city" : "Hosadurga",
		"age" : 24
		
	},
	{
		"name" : "Tom",
		"email" : "tom12@gmail.com",
		"city" : "US",
		"age" : 23
	}

]
"""
* print jsonobject
* print jsonobject[0]
* print jsonobject[0].name
* print jsonobject[1].age
* print jsonobject[1].name + " " + jsonobject[1].age  + " " + jsonobject[1].city + " " + jsonobject[1].email

Scenario: json parsing

* def jsonobject = 
"""
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}
}
"""
* print jsonobject
* print jsonobject.menu
* print jsonobject.menu.id
* print jsonobject.menu.value
* print jsonobject.menu.popup
* print jsonobject.menu.popup.menuitem[0].value
* print jsonobject.menu.popup.menuitem[1].onclick
* print jsonobject.menu.popup.menuitem[2].onclick