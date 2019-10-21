// Инкапсуляция - свойство системы объединить свойства и методы, работающие с ними, в класс и (или) скрыть их от пользователя
class TestClass {
    private var property1 = 2
    var property2 = "Hello"
    
    // инициализацию отдельно не прописываем, свойства инициализированы при объявлении
    
    func method1() {
        for iteration in 0...property1 {
            print(property2, iteration)
        }
        print("\n")
    }
}

var testObject1 = TestClass()
testObject1.method1()
//testObject1.property1 // Инкапсулировано - выкинет ошибку!


// Наследование - свойство системы, позволяющее описать новый класс на основе уже существующего с частично или полностью перенимаемой функциональностью
class InheritingClass: TestClass {
    var property3 = 3.4 // немного расширили класс-наследник новым свойством
}

var testObject2 = InheritingClass()
testObject2.method1()
testObject2.property3


// Полиморфизм - свойство системы использовать методы верхнеуровнего класса классами-потомками (приведено на примере инициализации, полагаю формально его можно считать методом)

class Film {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class DirectorsCut: Film {
    var directorsName: String
    
    init(name: String, dirName: String) {
        self.directorsName = dirName
        super.init(name: name)
    }
}

class TV_version: DirectorsCut {
    var channelName: String
    
    init(name: String, dirName: String, channel: String) {
        self.channelName = channel
        super.init(name: name, dirName: dirName)
    }
}

var spiderman = Film(name: "SpiderMan The Movie")
var spiderman_cut = DirectorsCut(name: "SpiderMan The Movie (Director's Cut Edition", dirName: "Sam Raimi")
var spiderman_tv = TV_version(name: "SpiderMan TV", dirName: "Sam Raimi", channel: "HBO")
spiderman.name
spiderman_cut.name
spiderman_tv.name
