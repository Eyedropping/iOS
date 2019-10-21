import UIKit

class Piano: Instrument {
    let hasPedals: Bool
    
    static let whiteKeys = 52
    static let blackKeys = 36
    
    init(brand: String, hasPedals: Bool = false) {
        self.hasPedals = hasPedals
        super.init(brand: brand) // here we init from a parent(super)class Instrument
    }
    
    override func tune() -> String {
        return "Piano standard tuning for \(brand)"
    }
    
    override func play(_ music: Music) -> String {
        return play(music, usingPedals: hasPedals)
    }
    
    func play(_ music: Music, usingPedals: Bool) -> String { // example of overloading - same name - different signature (params list)
        let preparedNotes = super.play(music) // calls from a superclass
        if hasPedals && usingPedals {
            return "Play piano notes \(preparedNotes) with pedals."
        }
        else {
            return "Play piano notes \(preparedNotes) without pedals."
        }
    }
}

let piano = Piano(brand: "Yamaha", hasPedals: true) // convention - classes names are capitalized, instances names are all lowercase
piano.tune()

let music = Music(notes: ["C", "G", "F"])
piano.play(music, usingPedals: false)

piano.play(music)

Piano.whiteKeys
Piano.blackKeys

class Guitar: Instrument {
    let stringGauge: String
    
    init(brand: String, stringGauge: String = "medium") {
        self.stringGauge = stringGauge
        super.init(brand: brand)
    }
}

class AcousticGuitar: Guitar {
    static let numberOfStrings = 6
    static let fretCount = 20
    
    override func tune() -> String {
        return "Tune \(brand) acoustic with E A D G B E"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play folk tune on frets \(preparedNotes)"
    }
}

let acousticGuitar = AcousticGuitar(brand: "Roland", stringGauge: "light")
acousticGuitar.tune()
acousticGuitar.play(music)

class Amplifier {
    private var _volume: Int // underscore emphasizes that it's the priate var - convention again, follow it
    private(set) /* means it can be read but not written to */ var isOn: Bool
    
    init() {
        isOn = false
        _volume = 0
    }
    
    func plugIn() {
        isOn = true
    }
    
    func unplug() {
        isOn = false
    }
    
    var volume: Int {
        get {
            return isOn ? _volume : 0
        }
        set {
            _volume = min(max(newValue, 0), 10)
        }
    }
    
}

class ElectricGuitar: Guitar {
    let amplifier: Amplifier
    
    init(brand: String, stringGauge: String = "light", amplifier: Amplifier) {
        self.amplifier = amplifier
        super.init(brand: brand, stringGauge: stringGauge)
    }
    
    override func tune() -> String {
        amplifier.plugIn()
        amplifier.volume = 5
        return "Tune \(brand) electric with E A D G B E"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play solo \(preparedNotes) at volume \(amplifier.volume)."
    }
}

class BassGuitar: Guitar {
    let amplifier: Amplifier
    
    init(brand: String, stringGauge: String = "heavy", amplifier: Amplifier) {
        self.amplifier = amplifier
        super.init(brand: brand, stringGauge: stringGauge)
    }
    
    override func tune() -> String {
        amplifier.plugIn()
        return "Tune \(brand) bass with E A D G"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Tune \(brand) bass with E A D G"
    }
}

var amp1 = Amplifier()

var gibson = ElectricGuitar(brand: "Gibson", stringGauge: "light", amplifier: amp1)
gibson.tune()
gibson.play(music)

var fender = BassGuitar(brand: "Fender", stringGauge: "heavy", amplifier: amp1)
fender.tune()
fender.play(music)

gibson.amplifier.volume
fender.amplifier.volume

fender.amplifier.unplug()
gibson.amplifier.volume
fender.amplifier.volume

gibson.amplifier.plugIn()
gibson.amplifier.volume
fender.amplifier.volume


class Band {
    let instruments: [Instrument]
    
    init(instruments: [Instrument]) {
        self.instruments = instruments
    }
    
    func perform(_ music: Music) {
        for instrument in instruments {
            instrument.perform(music)
        }
    }
}

let instruments = [piano, acousticGuitar, fender, gibson]
let metallica = Band(instruments: instruments)
metallica.perform(music)

/*
 Access Control
 Swift provides four levels of access control including:
    - private - visible within the class
    - fileprivate - visible within the file
    - internal - visible forom anywhere in the same module or app (default)
    - public - visible anywhere
 
 Additional access control keywords are:
    - open - can be used outside, can be subclassed or overridden from outside
    - final - cannot be overridden or subclassed
 */

