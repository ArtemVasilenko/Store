
struct Student {
    var number: String
    var name: String
    
    init(number: String, name: String) {
        self.number = number
        self.name = name
    }
}

struct Students {
    static var groupStudents = [Student.init(number: "1", name: "Vasya"), Student.init(number: "2", name: "Petya")]
}

//    init() {
//        groupStudents.append(Student.init(number: "1", name: "Vasilij"))
//        groupStudents.append(Student.init(number: "2", name: "Artem"))
//        groupStudents.append(Student.init(number: "3", name: "Kolya"))
//    }

//    mutating func groupDefault() {
//        groupStudents.append(Student.init(number: "1", name: "Vasilij"))
//        groupStudents.append(Student.init(number: "2", name: "Artem"))
//        groupStudents.append(Student.init(number: "3", name: "Kolya"))
//    }

//    mutating func addNewStudent(_ number: String, _ name: String) {
//        Students.groupStudents.append(Student.init(number: number, name: name))
//    }
//
//    mutating func clear() {
//        Students.groupStudents.removeAll()
//    }
//
//    func getList() -> String {
//        var allStudents = String()
//        for student in Students.groupStudents {
//           allStudents = allStudents + student.number + " " + student.name + "\n"
//        }
//        return allStudents
//    }

