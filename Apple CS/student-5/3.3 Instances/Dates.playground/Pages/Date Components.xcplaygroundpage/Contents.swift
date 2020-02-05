/*:
 
 ## DateComponents
 
 Since `Date` doesn't encapsulate concepts such as years, months, and days, another type steps in to handle them. It's called `DateComponents`.
 
 Like `Date`, `DateComponents` has limited functionality. It's designed simply to represent all the various units that we use to represent dates and times. It doesn't provide any operations on those units—it's primarily used just to hold their values.
 
 You can create an instance of `DateComponents` as you would a `Date`. Then you can set its properties as you wish. `DateComponents` is used in two contexts. One is to represent the _absolute values_ associated with a `Date` (for example, the `year` of January 24, 1984 is `1984`). The other is to represent a _relative duration_ of time, such as 1 hour and 45 minutes, or 2 years and 6 months.
 
 Create a `DateComponents` instance below and use it to represent your birthday. Note that you can't use `String`s to represent months. Instead, you'll use an `Int` for each property.
 
 */
import Foundation
var comps = DateComponents()
comps.year = 1973
comps.month = 10
comps.day = 12
/*:
 
 By itself, a `DateComponents` instance can't do much. You have to use it with a `Calendar` to complete the picture. (You'll learn more about the `Calendar` type on the next page.) Here's how to associate the system calendar with your date components.
 
    `myDateComponents.calendar = Calendar.current`
 
 */
/*:
 
 Associate the system calendar with the birthday components you created above. Now print the `date` property to the console.
 
 - callout(Note):
 You'll notice that the date is displayed inside an `Optional(...)` notation. That's because some combinations of date component values won't produce legal dates. In that case, the `date` property will be `nil`, which is the Swift way of saying that there's no value for that property. If you want to eliminate the optional notation, you can add an exclamation point (`myComponents.date!`), but be warned that the playground will crash if the components don't correspond to a legal date.
 
 */
comps.calendar = Calendar.current
print(comps.date!)
/*:
 
 It's not clear how to use some of the properties of `DateComponents`. You probably used `year`, `month`, and `day` to represent your birthday above. Can you use `weekOfMonth` and `weekday` instead of `day`?
 
 Create a new instance of `DateComponents`, set the appropriate components, along with the calendar, and then print the date to see if it worked correctly.
 
 */

/*:
 
 What if you add one year to this instance? How does the resulting `Date` change?
 
*/

//: [Previous](@previous)  |  page 2 of 6  |  [Next: Calendars](@next)
