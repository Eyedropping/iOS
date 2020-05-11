import UIKit

var str = "Hello, playground"

var byte: Int8 = 0b1111

var check: Int8 = 0b1011

var res: Int8 = byte & (0b0 << 2)

if check != res {print("!")}

let v = String(byte, radix: 2)
let v2 = String(check, radix: 2)
let v3 = String(res, radix: 2)
