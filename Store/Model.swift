protocol MyProtocol { }


//struct Model {
//
//    func addNewStudent(_ number: String, _ name: String) {
//        Students.groupStudents.append(Student.init(number: number, name: name))
//    }
//
//    func clear() {
//        Students.groupStudents.removeAll()
//    }
//
//    func getList() -> String {
//        var allStudents = String()
//        for student in Students.groupStudents {
//            allStudents = allStudents + student.number + " " + student.name + "\n"
//        }
//        return allStudents
//    }
//
//}

extension MyProtocol {
    func addNewStudent(_ number: String, _ name: String) {
        Students.groupStudents.append(Student.init(number: number, name: name))
    }
    
    func clear() {
        Students.groupStudents.removeAll()
    }
    
    func getList() -> String {
        var allStudents = String()
        for student in Students.groupStudents {
            allStudents = allStudents + student.number + " " + student.name + "\n"
        }
        return allStudents
    }
}
