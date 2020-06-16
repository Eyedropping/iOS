import UIKit

var str = "Hello, playground"


/**
 Date is instantianed by Date() Class.
 'Present moment' date is created via blank initializer (see below)
 */
let now = Date()


/**
 The reference date for the class is the Third Millenium (January 01, 2001).
 One of the options is to calculate time interval since the ref date (in seconds)
 The log output that will appear on printing now.timeIntervalSinceReferenceDate is itself the actual value of this instance
 */
print("It's been \(now.timeIntervalSinceReferenceDate) seconds since the start of the Third Millenium.")

/**
 to get more descriptive definition one uses .description string + Locale instance
 */
print(now.description)
print(now.description(with: Locale(identifier:"en-US")))
print(now.description(with: Locale(identifier:"en-GB")))
print(now.description(with: Locale(identifier:"es")))
print(now.description(with: Locale(identifier:"zh-Hans")))


// MARK: - Date
/**
 travel back and forth in time with specified seconds
 */
// from now
let fiveMinutesAgo = Date(timeIntervalSinceNow: -5 * 60)
let fiveMinutesFromNow = Date(timeIntervalSinceNow: 5*60)

// from reference date
let firstCellularDate = Date(timeIntervalSinceReferenceDate: -875_602_800)
let iPhoneStevenoteDate = Date(timeIntervalSinceReferenceDate: 190_058_400)

let secondsBetweeniPhoneAndiPadStevenotes = TimeInterval(96_249_600)
let ipadStevenoteDate = Date(timeInterval: secondsBetweeniPhoneAndiPadStevenotes, since: iPhoneStevenoteDate)

// POSIX time
let oneYear = TimeInterval(60 * 60 * 24 * 365)
let newYears1971 = Date(timeIntervalSince1970: oneYear)
let newYears1969 = Date(timeIntervalSince1970: -oneYear)


// MARK: - Date Components Basics
/**
 Let's create a date based on the first phone call moment in history
 March 10, 1876: The day Alexander Graham Bell made the first phone call
 */
// current calendar is instantiated - this is a user's calendsr
let userCalendar = Calendar.current

// Date components that will break down seconds into components it thorough but long to initialize
let firstLandLineCallDateComponents = DateComponents(
    calendar: nil,
    timeZone: .current,
    era: nil,
    year: 1876,
    month: 3,
    day: 10,
    hour: 13,
    minute: 00,
    second: 00,
    nanosecond: nil,
    weekday: nil,
    weekdayOrdinal: nil,
    quarter: nil,
    weekOfMonth: nil,
    weekOfYear: nil,
    yearForWeekOfYear: nil)

let firstLandLineCallDate = userCalendar.date(from: firstLandLineCallDateComponents)
print("The first land line call happenned on \(firstLandLineCallDate!.description(with: Locale.current))")
print("That's \(firstLandLineCallDate!.timeIntervalSinceReferenceDate) seconds since the start of the Third Millenium")


// December 9, 1968, 3:45 p.m. Pacific Time:
// Douglas Englebart gives “The Mother of All Demos”
// -------------------------------------------------
// This time, we’ll use only the DateComponents initializer parameters we need.
let motherOfAllDemosDateComponents = DateComponents(
    timeZone: .current,
    year: 1968,
    month: 12,
    day: 9,
    hour: 15,
    minute: 45)

let motherOfADemosDate = userCalendar.date(from: motherOfAllDemosDateComponents)
print("Mother of all demos sesions happened on \(motherOfADemosDate!.description(with: Locale.current))")


// April 3, 1973: Martin Cooper makes the first
// cellular phone call
// --------------------------------------------
var firstCellCallDateComponents = DateComponents()

firstCellCallDateComponents.year = 1973
firstCellCallDateComponents.month = 4
firstCellCallDateComponents.day = 3
firstCellCallDateComponents.timeZone = .current

let firstCellCallDate = userCalendar.date(from: firstCellCallDateComponents)
print("The first cell call was made on \(firstCellCallDate!.description(with: Locale.current))")


// The first Friday in June, 2020:
// National Donut Day
// -------------------------------
let donutDay2020Ciomponents = DateComponents(
    year: 2020,
    month: 6,
    weekday: 6,
    weekdayOrdinal: 1)

let donutDay = userCalendar.date(from: donutDay2020Ciomponents)!
print("Donut Day 2020 happens on \(donutDay.description(with: Locale.current)).")

// 9:00 p.m. Tokyo time on the Thursday of the 27th week of 2020
// -------------------------------------------------------------
var relaxingSuntoryTimesdateComponents = DateComponents(
    timeZone: TimeZone(identifier: "Asia/Tokyo")!,
    year: 2020,
    hour: 21,
    weekday: 5,
    weekOfYear: 27)

var relaxingSuntoryTimesDate = userCalendar.date(from: relaxingSuntoryTimesdateComponents)!
print("Relaxing Suntory times will take place on \(relaxingSuntoryTimesDate.description(with: Locale.init(identifier: "ja-JP"))).")
print("Tokyo time \(relaxingSuntoryTimesDate.description(with: Locale.init(identifier: "ja-JP"))) is \(relaxingSuntoryTimesDate.description(with: Locale.init(identifier: "en-US"))) European time")

// 234th day of 2020
// -----------------
let day234Components = DateComponents(
    year: 2020,
    day: 234)

let day234 = userCalendar.date(from: day234Components)
print("Thew 234th day of 2020th year is: \(day234!.description(with: Locale.current)).")

// 10k hours from a moment
//------------------------
let hour10kDateComponents = DateComponents(
    year: 2020,
    hour: 10000)

let hour10kDate = userCalendar.date(from: hour10kDateComponents)
print("If I start coding without any other distractions at ALL I will become a professional on \(hour10kDate!.description(with: Locale.current) ).")

//date overflow
//-------------
let overflowComponents = DateComponents(
    year: 2020,
    month: 9,
    day: 50)

let overflowDate = userCalendar.date(from: overflowComponents)!
print("This was the 50th day of September, actual: \(overflowDate.description(with: Locale.current)).")

// MARK: - Extracting Date Components
// We want to extract the year, month, and day from firstLandLineCallDate
let alexanderGrahamBellDateComponents = userCalendar.dateComponents([.year, .month, .day], from: firstLandLineCallDate!)
print("The first land line telephone call was performed \(-firstLandLineCallDate!.timeIntervalSinceNow) seconds ago.")
print("The year was: \(alexanderGrahamBellDateComponents.year!)")
print("The month was: \(alexanderGrahamBellDateComponents.month!)")
print("The day was: \(alexanderGrahamBellDateComponents.day!)")

// The original iPad Stevenote (10 a.m. Pacific time,
// January 27, 2010)
// ----------------------------------------------------
// We want to extract ALL the DateComponents for this date
// in local time for the event (which took place in San Francisco).
let ipadStevenoteDateComponents = userCalendar.dateComponents([.calendar,
                                                               .day,
                                                               .era,
                                                               .hour,
                                                               .minute,
                                                               .month,
                                                               .nanosecond,
                                                               .quarter,
                                                               .second,
                                                               .timeZone,
                                                               .weekday,
                                                               .weekdayOrdinal,
                                                               .weekOfMonth,
                                                               .weekOfYear,
                                                               .year,
                                                               .yearForWeekOfYear],
                                                              from: ipadStevenoteDate)

print("""
    Day: \(ipadStevenoteDateComponents.day!),
    Era: \(ipadStevenoteDateComponents.era!),
    Hour \(ipadStevenoteDateComponents.hour!),
    Minute: \(ipadStevenoteDateComponents.minute!),
    Month: \(ipadStevenoteDateComponents.month!),
    Nanoseconds: \(ipadStevenoteDateComponents.nanosecond!),
    Quarter: \(ipadStevenoteDateComponents.quarter!),
    Second: \(ipadStevenoteDateComponents.second!),
    TimZone: \(ipadStevenoteDateComponents.timeZone!),
    Weekday: \(ipadStevenoteDateComponents.weekday!),
    Weekday Ordinal: \(ipadStevenoteDateComponents.weekdayOrdinal!),
    Week of Month: \(ipadStevenoteDateComponents.weekOfMonth!),
    Week of Year: \(ipadStevenoteDateComponents.weekOfYear!),
    Year: \(ipadStevenoteDateComponents.year!),
    Year For Weak of Year: \(ipadStevenoteDateComponents.yearForWeekOfYear!)
""")
