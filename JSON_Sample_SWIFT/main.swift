//
//  main.swift
//  JSON_Sample_SWIFT
//
//  Created by Harsh on 2019-03-18.
//  Copyright © 2019 Harsh. All rights reserved.
//

import Foundation

var jsonString = """
{
"name" : "Harsh",
"rollno" : 30
}
""".data(using: .utf8)!

class Student : Codable
{
    var Fname : String?
    var rollno : Int?

    enum CodingKeys : String , CodingKey {
        case Fname = "name"
        case rollno
    }

} // class Student

func jsonfunc()
{
  guard  let url = URL(string: "https://api.myjson.com/bins/6rovy")
    else
    {
    return
    }
    
    
    URLSession.shared.dataTask(with: url) { (data, resp, er) in
      
        let decoder = JSONDecoder()
        let st = try? decoder.decode(Student.self, from: data! ) as Student
        if let s = st
        {
            print(s.Fname!)
        }

    }.resume()


}// func jsonFunc

jsonfunc()

readLine()

//---------------------------------------------------------------------------------------------
//var jsonString = """
//{
//"name" : "Harsh",
//"rollno" : 30
//}
//""".data(using: .utf8)!


//class Student
//{
//    var name : String?
//    var rollno : Int?
//
//    init(_ json : [String:Any]) {
//        self.name = json["name"] as? String
//        self.rollno = json["rollno"] as? Int
//    }
//}
//
//
//
//
//var  json = try JSONSerialization.jsonObject(with: jsonString , options: .mutableContainers ) as? [String:Any]
//if let j = json {
//    let  st = Student(j)
//    print(st.name!)
//}


//********************* Swift 4


//var jsonString = """
//{
//"name" : "Harsh",
//"rollno" : 30
//}
//""".data(using: .utf8)!
//
//class Student : Decodable
//{
//    var name : String?
//    var rollno : Int?
//
//
//}
//let decoder = JSONDecoder()
//var st = try? decoder.decode(Student.self, from : jsonString) as Student
//if let st = st
//{
//    print(st.name!)
//}

