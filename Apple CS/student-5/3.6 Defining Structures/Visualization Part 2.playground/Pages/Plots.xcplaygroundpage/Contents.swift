/*:
 ## Scatter Plots
 
 Scatter plots also expose some new types in this version of the API. `PlotView` displays your scatter plot data. `makePlot()` creates an instance named `plotView`. The plot data is a series of `PlotPoint` instances, stored as an array in the `points` property.
 
 `PlotView` has the following properties:
 
 - `points`: An `Array` of `PlotPoint`s.
 - `yAxisMinimum`: The minimum value of the Y axis expressed as a `Double`.
 - `yAxisMaximum`: The maximum value of the Y axis expressed as a `Double`.
 - `xAxisMinimum`: The minimum value of the X axis expressed as a `Double`.
 - `xAxisMaximum`: The maximum value of the X axis expressed as a `Double`.

 `PlotPoint` has the following properties:
 
 - `x`: The X coordinate of the point expressed as a `Double`.
 - `y`: The Y coordinate of the point expressed as a `Double`.
 - `color`: The color of the point expressed as a `UIColor`.
 - `size`: The size of the point expressed as a `Double`.
 
 As on previous pages, you'll also get an instance of `ChartKeyView` called `keyView`.
 
 - callout(Exercise): Create a plot using your own data.

 */
makePlot()


/*:
 
 - callout(Challenge): Recreate the `addPointAt(x:y:color:)`, `setXAxis(minimum:maximum:)`, and `setYAxis(minimum:maximum:)` functions from the original API.

[Previous](@previous)  |  page 5 of 6  |  [Next: Wrapup](@next)
 */


