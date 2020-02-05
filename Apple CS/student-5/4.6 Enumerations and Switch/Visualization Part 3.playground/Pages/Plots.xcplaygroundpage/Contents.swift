/*:
 ## Scatter Plots
 
 Scatter plots 
 
 `PlotPoint` has one new property, named `symbol`, of type `Symbol`.
 
 `Symbol` is an enum with the following cases:
 
 - `circle`
 - `square`
 - `diamond`
 - `triangle`
 - `x`
 - `plus`
 
 You can use these new properties by calling a new intializer for `PlotPoint`:
 
 - `init(x:y:color:size:symbol:)`
     - `x`: The x coordinate of the point expressed as a `Double`.
     - `y`: The y coordinate of the point expressed as a `Double`.
     - `color`: The color of the point expressed as a `UIColor`.
     - `x`: The size of the point expressed as a `Double`.
     - `symbol`: The symbol of the point expressed as a `Symbol`.

 `PlotView` itself gains the capability to draw lines. There's a new property named `mode` of type `PlotMode`. The `PlotMode` enum has the following cases:
 
 - `pointsOnly`
 - `linesOnly`
 - `pointsAndLines`
 
 The `pointsOnly` style is the default for `PlotView`s. If you use either of the other two modes, the `PlotView` will make groups from all points that have identical color and symbol, sort each group by increasing `x` value, and draw lines between points in each group.
 
 `ChartKeyItem` also gains a `symbol` property and a new initializer, `init(color:name:symbol:)`, so you can display symbols in a chart key to match those in your plot.
 
 - callout(Exercise): Experiment with plot point symbols, line drawing modes, and key item symbols.

 */
makePlot()


//: [Previous](@previous)  |  page 4 of 5  |  [Next: Wrapup](@next)
