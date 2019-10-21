// ASSOCIATED VALUES

/* Could be read as:
    Define an enumeration type called Barcode, which can take either:
        - a value of upc with an associated value of type (Int, Int, Int, Int), or
        - a value of qrCode with an associated value of type String. */
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qr(String)
}

// creating new bacodes with all two types, that the enum, defined above can take

var bc_upc = Barcode.upc(8, 85909, 51226, 3)
var bc_qr = Barcode.qr("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

var productBC = Barcode.upc(8, 85909, 51226, 3)
productBC = Barcode.qr("ABCDEFGHIJKLMNOPQRSTUVWXYZ") // here the ints of a first enum type (above) are replaced with the second type
productBC = Barcode.upc(9, 77808, 52337, 4)

switch productBC {
case .upc(let numberSys, let manu, let prod, let chk): // let upc.(numberSys, manu, prod, chk) - can put 'let' in the beginning if all exctracted values are const
    print("\(numberSys), \(manu), \(prod), \(chk)")
case .qr(let qr_code): // same applies here (let, vat in the beginning)
    print(qr_code)
}
