/*:
 ## Advanced Rules
You could also verify that a password contains at least one uppercase letter and one lowercase letter. That way an attacker can't limit their algorithm to lowercase letters, hoping a user was too lazy to use the shift key when typing their password.
 
 Another useful check is making sure that the password doesn't contain the username, so that the user can't choose "user01" and "user01password!".
 */
import Foundation
let tenMostCommonPasswords = [
    "123456",
    "password",
    "12345678",
    "qwerty",
    "12345",
    "123456789",
    "letmein",
    "1234567",
    "football",
    "iloveyou"
]
let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "
/*:
 - callout(Note):
You'll need a way to detect whether a character is uppercase or lowercase. But no such method or calculated property exists in the `Character` type. What to do?
\
\
Extensions are a feature of Swift that allow you to add new functionality to existing types. Below is code to implement a calculated property of `Character` that indicates whether it's uppercase.
\
\
Copy and paste the code below to define this new property.
\
\
`extension Character {`
\
` `    `    var isUpperCase: Bool {`
\
` `        `        get {`
\
` `            `            return Character(String(self).uppercased()) == self`
\
` `        `        }`
\
` `    `    }`
\
`}`
 */
// Character type extension on the next line...

/*:
 ### Implement your algorithm below with the additional new rules:
 
 - Contains at least one uppercase letter and one lowercase letter
 - Doesn't contain the username

 - callout(Tip):
 How will you need to use the `contains()` method?
 */
let username = "swiftC0der84"
let password = "password"

//: [Previous](@previous)  |  page 3 of 5  |  [Next: Custom Algorithm](@next)
