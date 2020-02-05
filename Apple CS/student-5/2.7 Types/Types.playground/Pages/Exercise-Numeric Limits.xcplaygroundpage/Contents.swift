/*:
 ## Exercise: Numeric Limits
 
 You've learned that computers represent numbers using a fixed number of bits. On this page, you'll explore more about how this impacts the way numbers work in computation.

 The `Double` type is so called because it refers to a “double-precision floating-point” number. A `Float` type also refers to a number with a decimal point, but the default `Double` is twice as precise.
 
 Below is an example of precision in floating-point numbers. Note that even though the literal assigned to each of the constants below has many digits of precision, the actual number of digits stored by each type is significantly fewer. An exact representation of pi is impossible—it has an infinite number of digits. Nonetheless, your choice of floating-point type will affect your calculations, such as the circumference of a circle on the previous page.
 */
let floatPi: Float = 3.141592653589793238462643383279
let doublePi: Double = 3.141592653589793238462643383279
/*:
 
 Integers also have built-in limits. Most computers use either 32 or 64 bits to store integer types, and this difference is hidden behind the `Int` type in Swift. If you want, you can explicitly choose from several storage sizes for your integers by using one of the following types:
 
 - `Int8`
 - `Int16`
 - `Int32`
 - `Int64`
 
 Each has a maximum and minimum value, stored in the `min` and `max` properties of the type. For instance, `Int16.max` is the maximum possible value of a 16-bit integer in Swift.
 
 - callout(Experiment):
    Find the maximum and minimum values of one of the types above.
 
 */

/*:
 - callout(Experiment):
    Now try adding 1 to the maximum value, or subtracting 1 from the minimum value. What do you think the resulting overflow error means?
 */

/*:
 
 _Copyright © 2019 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 14 of 14
