## Testing via Xcode

Today we talked about using testing to improve the reliability and increase automation in our coding.

We reviewed the previous week's material on testing, specifically:

- Why do we write tests
- The pros and cons of testing
- How to create a test target
- How to run tests

We covered the use of Xcode's built in tools to help with testing: 

- Test Navigator
- Code Coverage 


### Testing types used in iOS


We went over the 3 main types of tests most commonly used in iOS and elsewhere:

1. Return Value Tests / Stateless functions. Pass a value to a function and test the return value from the function.
2. State Tests. Test that a method modifies some state on an object.
3. Interaction Tests / Mock Tests. Use dependency injection to mock an object and test the interaction, specfically referring to User Defaults as a quick persistence solution and with respect to networking as well.


We discussed dependency injection to some degree and I'd recommend looking at the Resources section for more detail.

We reviewed best practices and emphasized testable code as core to that effort.

Time prevented us from discussing testing of view controllers in-depth but earlier we covered the refactoring of view controllers to keep them small (see above re networking).


Some tips for writing good tests:

Test one thing at a time
Test both successes and failures
Keep your tests simple! Bugs in tests are very frustrating

### Resources

*Steve Thompson's excellent notes: Be sure to download his `final` branch in the repo below*
https://github.com/philosopherdog/UnitTesting/tree/final

*General Ray Wenderlich unit testing tutorial (updated to Swift 4.2). Covers asynchronous testing, mocking and stubbing, UI testing, code coverage*
https://www.raywenderlich.com/960290-ios-unit-testing-and-ui-testing-tutorial

*Refactoring Swift for testing purposes*
https://www.swiftbysundell.com/posts/refactoring-swift-code-for-testability

*Return value testing* 
https://samuelmullen.com/2014/09/unit-testing-in-swift/
https://qualitycoding.org/swift-partial-mock/

*Integration testing* 
https://www.swiftbysundell.com/posts/integration-tests-in-swift

*Mocking UserDefaults*

*Mocking as a test technique, protocols, etc*
https://www.swiftbysundell.com/posts/mocking-in-swift
https://www.bignerdranch.com/blog/mocking-with-protocols-in-swift/

*A contrary approach to mocking*
https://www.swiftbysundell.com/posts/mock-free-unit-tests-in-swift

*Excellent presentation on mocking and best practices*
https://www.slideshare.net/mathonsunday/real-world-mocking-in-swift

*Jon Reid's Quality Coding*
https://qualitycoding.org/

*Dependency injection*
https://cocoacasts.com/nuts-and-bolts-of-dependency-injection-in-swift
https://medium.com/@JoyceMatos/dependency-injection-in-swift-87c748a167be
https://learnappmaking.com/dependency-injection-swift/
https://medium.com/ios-os-x-development/dependency-injection-in-swift-a959c6eee0ab
https://clean-swift.com/advanced-dependency-injection/
https://www.jamesshore.com/Blog/Dependency-Injection-Demystified.html

*Testing view controllers via dependency injection*
https://www.natashatherobot.com/unit-testing-swift-dependency-injection/
https://www.icemobile.com/how-to-write-better-unit-tests-in-swift-part-2 (in-depth, also assumes familiarity with the Presenter design pattern)
https://medium.com/cocoaacademymag/using-dependency-injection-to-test-an-uiviewcontroller-da8be5cd3559
https://priteshrnandgaonkar.github.io/Unit-Testing-a-feature/
https://medium.com/ios-os-x-development/dependency-injection-in-view-controllers-9fd7d2c77e55

I decided not to use slides as you know, but I am making a copy available should it prove useful to you.

https://docs.google.com/presentation/d/1Yw1Q5WAdeg1YJAZkef0UXvPBAj7RpYUiSjwn5MdTWgs/edit?usp=sharing

My code (with thanks to Sam and Steve)

https://github.com/northtwilight/Lighthouse-iOS-Examples/tree/working branch, W6D4 folder.
