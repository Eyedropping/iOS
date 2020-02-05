/*:
 
 ## Date Formatters
 
 So far, the user-readable representations of `Date` instances have been displayed in the results sidebar. But in your own app, you'd need control of how dates appear. For example, the following strings all refer to the same date:
 
 - 01/24/1984
 - Jan 24 '84
 - Tuesday, January 24, 1984

 And the following strings refer to the same time in the Pacific Standard time zone:
 
 - 9:41 AM
 - 09:41:00
 - 9:41:00 AM GMT-07:52:58
 
 You can use `DateFormatter`s to get string descriptions of `Date`s. Below is an instance of `DateFormatter`. If you call its `string(from: Date)` method with no extra setup, you can see that the result is just an empty string.
 
 */
import Foundation
var formatter = DateFormatter()
formatter.string(from: Date())
/*:
 
 In order to get useful output, you have to tell the formatter how you'd like the output. The easiest way is to use the `dateStyle` and `timeStyle` properties. These can be set to the following values:
 
 - `.full`
 - `.long`
 - `.medium`
 - `.short`
 - `.none`
 
 Experiment below to see how these properties affect the output string.
 
 */

/*:
 
 Of course, your to-do app should work properly in other countries, which have their own syntax for representing dates. The `Locale` type represents the linguistic, cultural, and technological conventions and standards shared by a group of people in the world. You can see a full list of the locales supported by the Foundation framework below. Somewhat inscrutable at first glance, they comprise a language code, followed optionally by an underscore and a region code. For example, the locale for English-speaking United States is "en_US"; for Fula-speaking Guinea, it's "ff_GN."
 
 You can create a locale and assign it to the `locale` property of a `DateFormatter`, as demonstrated below.
 */
formatter.locale = Locale(identifier: "en_US")
/*:
 
 Experiment below to see how today's date and time is represented across the world. You can use `Locale.availableIdentifiers` to see all the possiblities. (You might want to `print()` that property to the console see them all.)
 
 */

/*:
 Now that you know about `DateFormatter`s, copy your solution code for "Showing items due today" from the bottom of the previous page. If you use the formatter to create a string from the dates in your loop, they'll print out with your current time zone.
 
 - callout(Hint): Set the `locale` of your formatter to `Locale.current`.
 
 */

//: [Previous](@previous)  |  page 5 of 6  |  [Next: Wrapup](@next)
