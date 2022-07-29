
protocol Soundable {
    func makeSound()
}

extension Soundable {
    func makeSound() {
        print("agh-ha-ha!")
    }
}

class Animal: Soundable {
    func makeSound() {
        print("i'm an animal")
    }
}

extension Animal {
//    func makeSound() {
//        print("i'm not an animal")
//    }
}


class Dog: Animal {
    override func makeSound() {
        print("af-af-aw")
    }
}

let anySoundable: Soundable = Dog()
let anyAnimal: Animal = Dog()
let anyDog: Dog = Dog()

// protocol
func makeSound(entity: Soundable) {
    entity.makeSound()
}

makeSound(entity: anySoundable)
makeSound(entity: anyAnimal)
makeSound(entity: anyDog)

// class
func makeSound(animal: Animal) {
    animal.makeSound()
}

makeSound(animal: anyAnimal)
makeSound(animal: anyDog)

anySoundable.makeSound()
