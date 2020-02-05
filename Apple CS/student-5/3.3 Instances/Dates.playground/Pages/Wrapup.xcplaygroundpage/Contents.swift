/*:
 
 ## Wrapup
 
 In this playground, you learned about the types that the Foundation framework uses for date calculations.
 
 Dates and calendars are weird. For instance, "one month from now" is not literally a constant time interval. It can represent 28, 29, 30, or 31 days in the Gregorian calendar. But at a high level of abstraction, it's a constant, because it represents the idea of going from one month to the next on the same numbered day. Everyone understands that one month from June 20th is July 20th. `Calendar` and its associated types require some sophisticated code to model the real-world system of dates and times that we use (often without thinking).
 
 When you build a model for something, it often turns out to be more complicated than you might have expected. Building a model requires you to really think about all the elements of a system and how they interact - before you can represent them in code. In the case of date calculations, a truly comprehensive model involves many different types, encompassing knowledge of calendar systems across the globe, time zones, and ways to represent dates as strings (among other elements). The algorithms and data for these elements are encapsulated into types, such as `Calendar`, `DateComponents`, and `Locale`.
 
 Now that you've taken a quick tour of the Foundation framework's implementation, you should have a better appreciation for the work that can go into creating a high-fidelity model of a complicated human system.
 
 */
/*:
 
 _Copyright © 2019 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 6 of 6
