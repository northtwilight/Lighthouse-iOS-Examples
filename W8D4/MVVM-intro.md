Introduction to the Model-View-ViewModel (MVVM) architectural design pattern
============================================================================

Model-View-ViewModel (MVVM)is a design pattern that increasingly is becoming popular for use in iOS apps and frameworks. Designed as a response to the dominant Model-View-Controller (MVC) design pattern, MVVM allows for more flexibility, more abstraction, and less redundant code.

## Where MVC falls down

MVC as a design pattern is of course enormously popular, both within and outside of Apple itself. However, the separation of concerns into model (data), view (data display) and controller (business logic) tends to fall down over time, where view controllers themselves eventually assume more and more functionality and responsibility.

Originally with MVC, views are never supposed to talk to models directly, instead receiving model information (data) through any intermediary view controllers created. Views merely display information, and controllers take views' inputs (ie keyboard input, button presses, gestures set up with recognizers and so on) to translate them to model changes. 


### Typical MVC 

![Standard MVC](https://koenig-media.raywenderlich.com/uploads/2019/01/01-MVC-Diagram.png)

From the diagram, we can see that 

1. Views are updated by their Controllers `(C -> V)`
2. Views pass user actions to their Controllers `(V -> C)`
3. Models notify controllers of their data `(M -> C)`
4. Controllers update models with view-originated changes `(C -> M)`

Again, note that models and views do not interact at all, they must do so via the Controller as an intermediary.


### Apple MVC

<img src="https://miro.medium.com/max/1400/1*PkWjDU0jqGJOB972cMsrnA.png" alt="Apple MVC" width="500"/><p>


Apple's version of MVC compounds some of these problems. In Apple's MVC, views and view controllers are tightly coupled, relatively speaking, and the view controller works as before, receiving model notifications and submitting data updates back to the model layer. The design of MVC in Cocoa/Cocoa Touch almost encourages developers to create so-called `Massive View Controllers`, handling anything and everything. As Bohdan Orlov points out, this coupling leaves you with little choice than to just trust Apple with respect to offloading display work to destination views; you have no choice in the matter whatsoever. 

As a result of this, view controllers end up being delegates and data sources to just about everything. If you're not careful in building the app, you can even end up dispatching and cancelling network requests in view controllers too, making the problem even more difficult to use, more difficult to understand, and more difficult to test.

And if you aren't careful, you can even end up with this:

```swift
var userCell = tableView.dequeueReusableCellWithIdentifier("identifier") as UserCell
userCell.configureWithUser(user)

```

With the above example (both lines) we're actually configuring the cell -- ie our view -- **directly from the model**. 

This is bad for a number of reasons. UI information from the view gets mixed up with model / data information, and the view is no longer just responsible for displaying model information, it's also now capable of **taking / accepting** model data, which means concerns are not kept separate but intermingled. 

Being unable to separate them out means we will have a hell of a time testing this setup too. Now you need to careful in mocking views when testing as well, which is also extra hassle. 

Finally, you will need to space out your business logic code (and tests) from your view layout code (and its tests).


## MVVM as a design pattern

<img src="https://miro.medium.com/max/1400/1*uhPpTHYzTmHGrAZy8hiM7w.png" alt="MVVM on iOS" width="700"/>

<p><p>

MVVM resolves most if not all of these concerns. There is a technical debt, in that you will need to learn some new ways of doing things, namely using protocols and data bindings, but on the whole after MVVM your code will be better organized, clearer to understand and likely somewhat shorter / smaller as well. 

Let's look at this in depth. 

### Models: Our data repository is unchanged from MVC

Enough said.


### Views - display logic

In MVVM, our view controllers are considered **as views** - in other words, these two UIKit components are meant to display data only, not alter it (ie not change model data).

Therefore, our view layer can be relatively thin, with all / near-all business logic (ie model data changes) removed. What stays? All presentation and display logic: How our visual data is presented to the user, how that data is formatted (ie as currency values, as floats, as doubles, as dates and strings etc). These components are, as before, UIKit-based, unlike our next item.

Views own their View Models and pass UI changes back to them. These changes are transformed into model changes, but not until they enter their view models -- the views are no longer responsible for modifying model data directly, instead they give their changes (button pressed, date chosen in a picker, swipe gesture to the right, etc) over the view model for further processing.

Finally Views are linked to their View Models through data bindings and user action bindings: data and user action bindings provide a simple and elegant way for tracking changes easily. More on this below.


### View Models: Where do we put our business logic?

Data bindings allow us to link our view models with our views. As the view model layer is not part of the model layer, we can bind or tightly link the updating mechanism from our view to our view model. 

**How can we obtain a set of bindings to use?**

You can make your own dynamic bindings, using generics, closures, protocols and Swift property observers (and in fact this is encouraged), or you can use third-party binding frameworks such as Bond from Srdan Rasic, which creates type-safe bindings derived in much the same way as your own layer, or even use reactive frameworks such as ReactiveCocoa, RxSwift and ReactiveKit. More below!

Beyond the view layer, we place our business logic and other administrative details into the **View Model**, which is a new construct. As per our diagram above, our view models should not be based on UIKit. 

**Generally, we attach a view model to every view controller and every separate view.**

The view model assumes the same place in our systems diagram as the view controller did in MVC: 

- It owns and updates the Model with changes from the View layer
- The Model notifies the View Model of its own model data changes (these are passed to the View layer for display)

With recent massive changes coming to iOS this fall, we will see MVVM move into the heart of Swift development with the introduction of SwiftUI and the Combine framework. The latter is Apple's answer to RxSwift and React and promises to simplify and speed up iOS development in future.

## Resources

The project I intended to show you today had a bunch of networking glitches that I wasn't able to fully resolve prior to class. So instead I showed you a different project based on a tutorial, but unfortunately it wasn't the best option, my apologies for this.

The first several resources by ST Huang, Ian Keen and Srdan Rasic are by far the best quick resources available on MVVM.

##### How not to get desperate with MVVM implementation, ST Huang, Flawless App

https://medium.com/flawless-app-stories/how-to-use-a-model-view-viewmodel-architecture-for-ios-46963c67be1b

##### MVVM: A non-reactive introduction, Ian Keen 

Thanks to Thomas Minshull for reminding me of this. This project is excellent as it expressly avoids using reactive frameworks to handle the property observation needed in view models.

https://medium.com/@IanKeen/mvvm-a-non-reactive-introduction-5a1f33402a32

##### Solving the binding problem with Swift, Srdan Rasic

This was one of the two articles to really get the ball rolling on dynamic bindings, both from the same author, who also created Bond, perhaps the simplest of the dynamic binding options available on iOS

https://five.agency/solving-the-binding-problem-with-swift/

##### Bindings, Generics, Swift and MVVM, Srdan Rasic

http://rasic.info/bindings-generics-swift-and-mvvm/

##### Ray Wenderlich tutorial on Bond. MVVM is covered as a matter of course.

https://www.raywenderlich.com/667-bond-tutorial-bindings-in-swift

=====

##### Using MVVM in iOS, Christopher Batin

https://blog.pusher.com/mvvm-ios/

##### How to implement MVVM pattern in Swift from scratch, Benoit Pasquier

Not bad, but OMG the networking layer on this is just nuts. Good use of completion handlers, generics and its own version of Result (which we don't need anymore, as Swift 5 comes with its own Result construct) throughout the project.

https://benoitpasquier.com/ios-swift-mvvm-pattern/

##### MVVM vs MVC, Andrew Jaffee, AppCoda

https://www.appcoda.com/mvvm-vs-mvc/

##### Swift Tutorial: An Introduction to the MVVM Design Pattern, Dino Bartosak

https://www.toptal.com/ios/swift-tutorial-introduction-to-mvvm

##### Static patterns MVVM tutorial, Lucas van Dongen

https://www.toptal.com/swift/static-patterns-swift-mvvm-tutorial

##### Overview of different architectures / design patterns, Bohdan Orlov

https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52

##### MVVM in Swift 4: using delegates, Nishadh Shrestha

https://www.codementor.io/nishadhshrestha/mvvm-in-swift-4-using-delegates-ikdflt1cb

##### Migrating Swift iOS Apps from MVC to MVVM, Angela Mugo, Twilio

https://www.twilio.com/blog/2018/05/migrating-swift-ios-mvc-mvvm.html

#####  Swift + MVVM + Two Way Binding = Win! Manish Katoch

https://codeburst.io/swift-mvvm-two-way-binding-win-b447edc55ff5

##### MVVM Pattern Sample in Swift/iOS, Eleazar Estrella

https://dev.to/eleazar0425/mvvm-pattern-sample-in-swiftios--58aj

##### How to implement the MVVM design pattern in Swift, Florian _

https://www.iosapptemplates.com/blog/ios-development/mvvm-swift

##### Researching MVVM in Swift 

https://www.agnosticdev.com/blog-entry/swift/researching-mvvm-swift