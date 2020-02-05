/*:

 ## Modeling Dates
 
 In Lesson 9: Types, you experimented briefly with the `Date` type by creating new instances and then adding numbers to change them. You learned that by adding 1 to a `Date` instance, you moved it forward in time by one second. You could write all your own functions for date calculations using this basic operation. For example, if you wanted to create a new date one day in the future, you could calculate the number of seconds in a day, and then add that value.
 
 But there are plenty of examples that prove this approach won't always work. What happens if you're creating an appointment for one week in the future, and the time changes from daylight savings to standard in between now and your appointment? Your simple calculation will be wrong.
 
 `Date` instances themselves have very limited capabilities. They don't contain any high-level abstractions like days, weeks, months and years. In fact, an instance of `Date` is very simple. It just contains one thing: a `Double` representing a number of seconds since a fixed instant in time. There are two such fixed instants in common use. One is January 1, 1970 at midnight GMT. The other is January 1, 2001 at midnight GMT.
 
 - callout(Note):
 You'll see that `Date`s express these values as `TimeInterval`s. `TimeInterval` is just another name for `Double`. Anywhere you use one, you can use the other.
 
 Use the `timeIntervalSinceReferenceDate` and `timeIntervalSince1970` properties to calculate the number of seconds from each of the two reference dates until now. (Recall that, by default, instantiating a `Date` always returns the current instant in time.)
 
 */
import Foundation

/*:
 
 One property of `Date` is `distantFuture`. You can get a `Date` instance representing a time far in the future as demonstrated below.
 
 */
let aLongTimeFromNow = Date.distantFuture
/*:
 
 Is that the farthest in the future that `Date` can represent? Experiment below to see how far you can go.
 
 */

/*:
 
 In this playground, you'll explore the model that the Foundation framework uses for working with dates and times. The model represents the real-world system we all use to communicate about dates and times. It provides an abstraction for this system so that you can perform common tasks without needing to know all the complexities of date and time calculations.
 
 The model is built on four core types: `Date`, `Calendar`, `DateComponents`, and `DateFormatter`. Additional types include `TimeZone`, `DateInterval`, and `Locale`.
 
 - callout(Exercise):
 Without looking at any documentation or knowing what `Date` represents, how do you think the other types function?
 */
//: page 1 of 6  |  [Next: DateComponents](@next)
