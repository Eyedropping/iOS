import PlaygroundSupport
import UIKit

// Hiding API so that we can control autocomplete exposure in the Setup source file.
public struct Interface {

    private var pie: PieChartVisualizationViewController? {
        get {
            return PlaygroundPage.current.liveView as? PieChartVisualizationViewController
        }
    }
    
    private var bar: BarChartVisualizationViewController? {
        get {
            return PlaygroundPage.current.liveView as? BarChartVisualizationViewController
        }
    }
    
    private var plot: PlotVisualizationViewController? {
        get {
            return PlaygroundPage.current.liveView as? PlotVisualizationViewController
        }
    }

    private var key: ChartKeyProviding? {
        get {
            return PlaygroundPage.current.liveView as? ChartKeyProviding
        }
    }

    public func _color(hue: Double, saturation: Double, brightness: Double) -> UIColor {
        return UIColor(hue: CGFloat(hue), saturation: CGFloat(saturation), brightness: CGFloat(brightness), alpha: 1)
    }

    public func _addKeyItem(withLabel label: String, color: UIColor) {
        key?.addKeyItem(withLabel: label, color: color)
    }

    public func _addWedge(withProportion proportion: Double, color: UIColor) {
        pie?.wedges.append(PieWedge(proportion: proportion, color: color, scale: 1, offset: 0))
    }
    
    public func _addBar(withLength length: Double, color: UIColor) {
        bar?.bars.append(ChartBar(length: length, color: color))
    }
    
    public func _addXAxisLabel(_ name: String) {
        bar?.seriesLabels.append(name)
    }
    
    public func _addPointAt(x: Double, y: Double, color: UIColor, size: Double, shape: Symbol) {
        plot?.points.append(PlotPoint(x: x, y: y, color: color, size: size, symbol: shape))
    }

    public func _setXAxis(minimum: Double, maximum: Double) {
        plot?.plotView.xAxisMinimum = minimum
        plot?.plotView.xAxisMaximum = maximum
    }

    public func _setYAxis(minimum: Double, maximum: Double) {
        switch PlaygroundPage.current.liveView {
        case let plot as PlotVisualizationViewController:
            plot.plotView.yAxisMinimum = minimum
            plot.plotView.yAxisMaximum = maximum
        case let bar as BarChartVisualizationViewController:
            bar.barView.yAxisMinimum = minimum
            bar.barView.yAxisMaximum = maximum
        default:
            _ = 0
        }
    }
    
}

public let _interface = Interface()
