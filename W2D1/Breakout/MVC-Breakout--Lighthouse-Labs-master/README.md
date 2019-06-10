# MVC Breakout

* MVC (Model View Controller) is a software architectural pattern invented for implementing apps that have a user interface or view layer. 

* It divides an application into three interconnected parts (buckets of interrelated classes). 

* This allows the way data is represented (e.g. in a data base) to be separate from the way it is displayed to the user. 

* It's a way of organizing your code around responsibilities so as to decouple your application's data and data manipulation from the way it is displayed. 

* This helps make code more reusable, more maintainable, and more resilient to change over time.

* It was first invented for desktop apps once computers became powerful enough to represent data in GUI's.

* It was introduced to Smalltalk at PARC in the 1970's. 

* The pattern exploded in popularity after Apple introduced WebObjects in 1996 originally written in Objc, later ported to Java.

* MVC is the dominant way web frameworks are currently structured today. (Django, Rails, etc. are all impose MVC).

* There are many alternatives to MVC these days that try to address some of its shortcomings, but first you need to understand MVC!

* MVC is totally baked into CocoaTouch and is a key pattern in iOS development. 

* This means that Apple will often ask you to create a custom class that plays some role in their MVC architecture. 

* For instance, you may be asked to create an object that acts as a model for a particular view class (table views do this).

[Wikipedia article](https://en.wikipedia.org/wiki/Model–view–controller)


### Video Resource Explaining MVC For iOS

https://www.youtube.com/embed/-auG-myu02Q

start: :40
end: 15:00


### Demo

* The goal is to use MVC to create a single view application that simply randomizes 3 artist objects and display them in our view. 
