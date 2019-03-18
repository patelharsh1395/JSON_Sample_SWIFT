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
    
}



func jsonfunc()
{
  guard  let url = URL(string: "https://api.myjson.com/bins/6rovy")
    else
    {
    return
    }
    print(url)
    print("inside func ")
    URLSession.shared.dataTask(with: url) { (data, resp, er) in
      print("inside block")
    
    
    }.resume()


}

jsonfunc()




