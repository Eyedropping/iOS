/*:
 
 ## Calendars
 
 Calendars contain the complicated logic for calculating dates and times. It's how you accomplish all the work in an app that relies on instances of `Date`. On the previous page, you saw that you could get the current system calendar (which is controlled by the user's preferences) with `Calendar.current`:
 
 */
import Foundation
let calendar = Calendar.current
/*:
 
 You got a `Date` from your birthday's date components by using the `date` property of `DateComponents`, but that's a shortcut for the standard `Calendar` method. Create the components as you did before, but use the `date(from:)` method of `Calendar` to get the `Date` instance.
 
 Note: You'll see that most of the `Calendar` methods return a familiar type, but with a question mark at the end. That's an indication that the method may not return anything if the input to the method is invalid. For the purposes of this playground, you can assume that you'll always receive a valid instance from these methods. To indicate that assumption to the Swift compiler, add an exclamation point at the end of the expression. If you don't, you'll see a lot of errors that look like:
 
    Value of optional type 'Date?' must be unwrapped
 
 */

/*:
 
 Now you can do some interesting calculations with your birthday. For instance, do you know which day of the week you were born on? Confirm this by using the `dateComponents(in: TimeZone, from: Date)` method. It may seem odd to pass components to a calendar to get a date, then pass in that date to get components back. But when you do this, the new components give you extra information: all the properties you left out of the original components. That way, you'll be able to see the `weekday` component.
 
 > Use `TimeZone.current` as the first argument to the method.
 
 */

/*:
 
 Use the same technique to find out the weekday of your birthday in other years.
 
 */

//: [Previous](@previous)  |  page 3 of 6  |  [Next: More Date Calculations](@next)
