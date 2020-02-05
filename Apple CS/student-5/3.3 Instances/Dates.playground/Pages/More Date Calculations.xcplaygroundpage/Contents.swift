/*:
 
 ## More Date Calculations
 
 If you're making a to-do app, some of the important things you need to accomplish with dates might be:
 
 - Set a due date at a certain time in the future
 - Remind the user how much time remains to accomplish a task
 - Show only those items that are due today
 
 On this page, you'll perform all these tasks.
 
 */
/*:
 
 ### Creating due dates
 
 When a user creates a new to-do item, they'll want to express the due date in terms of a time duration. For example, they might want to accomplish a task by one week from today. The `Calendar` method `date(byAdding: DateComponents, to: Date)` can create new `Date` instances by adding units of time.
 
 Below is an example creating a new date one year from now. Note the exclamation point indicating that we expect the calculation to produce a valid date.
 
     var oneYearFromNowComponents = DateComponents()
     oneYearFromNowComponents.year = 1
     let oneYearFromNowDate = Calendar.current.date(byAdding: oneYearFromNowComponents, to: Date())!

 */
import Foundation
/*:
 
 Create new dates representing items due tomorrow, one week from now, and two months from now. (Remember, "now" can be represented simply by `Date()`.)
 
 */

/*:
 
 Users might also use language like "this coming Tuesday" to describe a due date. You learned about the `weekday` property of `DateComponents` on the previous page, but it's not clear how to create the proper `Date` instance to satisfy the user's intent. The key lies in another `Calendar` method that looks forward in time, `nextDate(after: Date, matching: DateComponents, matchingPolicy: Calendar.MatchingPolicy)`.
 
 - callout(Note):
 To look forward in time to the coming Tuesday, you'll need to know that weekdays are numbered from 1 to 7, starting on Sunday. For the `matchingPolicy` argument, you can specify `.nextTime`. As you have before, add an exclamation point to the end of your expression, since you're assuming that the resulting date is valid.
 
 */

/*:
 
 ### Calculating remaining time
 
 How many days remain until this coming Tuesday? You can use the `dateComponents(_:from:to:)` method to find out. The first argument takes a set of date components, and it should be pretty clear what to pass in the `from` and `to` arguments.
 
 - callout(Note):
 How do you specify a set of `DateComponents`? A `Set` is very similar to an `Array`. For example, if you want to find out how many months are in an interval between two dates, you can specify `[.month]` for that argument.
 
 */

/*:

 Why is `Calendar` returning one fewer day than you expected?
 
 - callout(Hint):
 Are each of the days until the due date full 24-hour days? Maybe `Calendar` is being more literal about the meaning of `day` than the level of abstraction you're probably using.
 */

/*:
 
 ### Showing items due today
 
 Use a `for...in` loop to create `Date` instances for each of the next 24 hours. (It's easiest to fall back on the simple method of adding a number of seconds to a `Date` instance.) The resulting dates are spread out between today and tomorrow. How can you determine which day they fall on?
 
 Look in the documentation for `Calendar` and find the appropriate method, then add an `if` statement to your loop to print out just those dates that fall today. (Hint: it's a very descriptively named, simple method.)
 
 - callout(Note):
 You'll notice that the output from `print()` is in the UTC+0 time zone, commonly known as Greenwich Mean Time or GMT. You'll have to manually convert to your current time zone to check your answer.
 */
/*:
 
 - callout(Hint):
 Are you seeing an error stating `Binary operator '*' cannot be applied to operands of type 'Date' and 'Int'`? In order to use the loop variable in an expression to add seconds to your date, you'll have to make it into a `Double` like this: `Double(myLoopVariable)`.
 
 */

//: [Previous](@previous)  |  page 4 of 6  |  [Next: Date Formatters](@next)
