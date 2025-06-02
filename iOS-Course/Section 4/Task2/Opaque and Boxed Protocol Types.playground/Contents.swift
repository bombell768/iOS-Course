protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
    
    func perimeter() -> Double {
        return 2 * .pi * radius
    }
}

class Rectangle: Shape {
    let length: Double
    let width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func area() -> Double {
        return length * width
    }
    
    func perimeter() -> Double {
        return 2 * (length + width)
    }
}

func generateShape() -> some Shape {
    return Circle(radius: 5.0)
}

func calculateShapeDetails(_ shape: some Shape) -> (Double, Double) {
    return (shape.area(), shape.perimeter())
}


let rectangle = Rectangle(length: 10.0, width: 20.0)
let shape = generateShape()

print(calculateShapeDetails(rectangle))
print(calculateShapeDetails(shape))
