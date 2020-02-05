/*:
 ## More about Colors
 
 Until now, you've specified colors from a fixed list of names, each starting with a period. But this is just a very small view into a full-featured type named `UIColor`. An instance of `UIColor` represents one of the millions of possible colors on the screen of your iOS device. It has several useful initializers. They take arguments of type `CGFloat`, which is like `Double`.
 
 - `init(red:green:blue:alpha:)` takes `Double` arguments, each ranging from 0 to 1, indicating the amount of red, green, blue, and alpha for the color. Alpha is the transparency level: an item with partial transparency (any alpha less than 1.0), will blend its color with the colors of items underneath it.
 - `init(hue:saturation:brightness:alpha:)` also takes `Double` arguments. Instead of mixing the red, green, and blue primary colors, this initializer defines a color by its hue, saturation, and brightness. Hue ranges from red, 0.0, through the rainbow spectrum of orange, yellow, and so on, until wrapping back around to red at 1.0. Saturation, from 0.0 to 1.0, describes how much "color" is in the color: imagine the difference between a bucket of pure red paint, versus a bucket of white paint with one drop of red paint added to it. Brightness is like a description of that starting neutral color, from 0.0 (a bucket of black paint) to 1.0 (a bucket of white paint).
 - `init(white:alpha:)` is a quick way to create grayscale colors with just two `Double` arguments.
 
 All of the color names you've been using, such as `.red` and `.black`, are just properties of the `UIColor` type. They're special properties called *class properties* because they are part of the type itself, not part of its instances. So instead of creating a new `UIColor` and then referring to its `black` property, you just refer to the `black` property of `UIColor` itself, like this: `UIColor.black`. Because Swift is good at type inference, you can leave out the `UIColor` part of this expression when using it in a place where a `UIColor` is expected.
 
 The `color` property of both `PieWedge` and `ChartKeyItem` is actually a `UIColor`.
 
 In order to use `UIColor`, you have to import `UIKit`:
 
 */
import UIKit
/*:
 
 - callout(Challenge): Use custom colors in a pie chart.
 
 */

makePieChart()


/*:
 
 - callout(Challenge): Use tranparency to create cool effects. (Hint: you can have pie wedges that add up to more than 100% of the pie.)
 
 */



/*:
 
 - callout(Challenge): Recreate the `addWedge(withProportion:color:)` and `addKeyItem(withLabel:color:)` functions from the original API.
 

[Previous](@previous)  |  page 3 of 6  |  [Next: Bar Charts](@next)
 */

