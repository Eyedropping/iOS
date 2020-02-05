# Survey

## Summary
This is a starter project for the AP Computer Science Principles Create task. It's an simple app that displays information about a data set.

To complete this project, you should gather data about something you're interested in. This could be an existing data set, such as your music collection, oscar winning movies, or chemical elements. Or you could create a survey and gather responses. Your app should calculate interesting statistics about your data set. For instance, you could calculate the number of songs in each genre for the music or the average running length of the movies.

You can build and run the project as-is to see it in action with sample data.


## Instructions
There are several points of customization in order to complete the project.

### Data Abstraction
Edit `DataObjects.swift` to create your custom data type(s). You'll need to make one or more `struct`s to represent the data you want to collect. If you have multiple types, there should be one "root" type that contains the others—this app is only capable of loading one list of items, each with the same type. Be sure that each of your `struct` declarations look like this so they will be compatible with the `DataSource` type:

```swift
struct MyType: Codable {
...
}
```

You'll need to represent your data in JSON format. You can fnd tools online that will convert from spreadsheet formats such as CSV to JSON. Once you have your data, put it into the `data.json` file, replacing the existing contents. The names of each JSON field must match the name of one of the properties of your root data type. Any properties of your data of type `Date` must be represented in JSON with a `String` in the format "MM/DD/YYYY".

#### **If you change your JSON file, you must delete the app from the simulator before you re-run your project. The JSON file is only copied onto the simulator when the app is installed fresh.**


### User Interface
The `Main.storyboard` file of the project contains a root tab bar controller. It's set up with five tabs, each of which corresponds to a different data display.

- **Simple Text** One or more labels.
- **List** A scrolling list (contained in a table view). The list could contain each individual data item, or a custom list of your own summary information.
- **Pie Chart** A pie chart and key.
- **Bar Chart** A bar chart and key.
- **Plot** A plot and key.

You can delete any of the displays you won't use by choosing them from the Document Outline and pressing the Delete key.

#### Simple Text
Modify `SimpleTextViewController.swift` to display custom text. Put your main code in the `viewDidLoad()` method and add as many helper methods as you need. In its stock configuration, `SimpleTextViewController` contains two labels. If you want to add more labels or other UI elements, modify the storyboard to add extra labels and add the appropriate outlets so you can modify their text.

#### List
Modify `ListDataSource.swift` to configure a list of items. (You won't need to modify `ListViewController.swift`.) The `ListDataSource` struct is very similar to the `ConversationDataSource` in the "ChatBot" project. Each row in the list can display two strings—one on the left hand side, and one on the right. Note that each string can have multiple lines.

#### Pie Chart
Use `PieChartViewController.swift` to display a pie chart and an accompanying key. Put your main code in the `viewDidLoad()` method and add as many helper methods as you need. The API for pie charts is identical to the one you used in the Visualization Part 3 playground.

#### Bar Chart
Use `BarChartViewController.swift` to display a bar chart and an accompanying key. Put your main code in the `viewDidLoad()` method and add as many helper methods as you need. The API for bar charts is identical to the one you used in the Visualization Part 3 playground.

#### Plot
Use `PlotViewController.swift` to display a plot and an accompanying key. Put your main code in the `viewDidLoad()` method and add as many helper methods as you need. The API for plots is identical to the one you used in the Visualization Part 3 playground.


### Algorithm
You'll implement one or more algorithms to process the list of items in your data to calculate the summary information you want to display. Each view controller might contain a different algorithm to display a different aspect of your data.


## Extensions
Here are some ways you could go beyond the supplied project to really make it your own.

### Basic
Display multiple statistics in a view controller by adding a segmented control. (You can go back to your Meme Maker app to recall how to use segmented controls.) Move your visualization setup code from `viewDidLoad()` to a new custom method and add an `IBAction` connected to the segmented control. Call this new method from both `viewDidLoad()` and the `IBAction` and calculate your data based on the index of the selected segment. Make sure to remove all items (e.g. wedges, bars, or points) from the chart before adding new ones.

### Intermediate
Use a slider that modifies your display interactively. You'll need to pick one property of your struct, such as a date or a number, that will be adjusted by the slider. Move your visualization setup code from `viewDidLoad()` to a new custom method and add an `IBAction` connected to the slider. Call this new method from both `viewDidLoad()` and the `IBAction` and use the slider's value to determine whether a particular element in your data set is included in the statistics. Make sure to remove all items (e.g. wedges, bars, or points) from the chart before adding new ones.

### Advanced
Create a new view controller that contains multiple visualizations—for example, a pie chart and a bar chart—or anther custom UI. You'll have to create a new storyboard scene and add a Relationship segue from your tab bar controller. You'll also create a new file for the view controller and declare it in the same fashion that the other ones are declared: `class MyNewViewController: UIViewController`. Back in your storyboard, use the Identity inspector to select your new view controller class as the custom class. 
