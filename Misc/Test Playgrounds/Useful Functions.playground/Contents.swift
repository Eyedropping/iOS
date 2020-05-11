import UIKit

var str = "Hello, playground"

// MARK: - gets the address of a variable via UnsafeRawPointer & MemoryLayout
func address(of pointer: UnsafeRawPointer) -> String {
    let length = 2 + 2 * MemoryLayout<UnsafeRawPointer>.size
    let address = Int(bitPattern: pointer)
    return String(format: "%0\(length)p", address)
}
