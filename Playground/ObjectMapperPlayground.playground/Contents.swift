import UIKit
import ObjectMapper

var str = "Hello, playground"

struct User: Mappable {
  var name: String!
  var sex: String!
  
  enum CodingKeys: String, CodingKey {
    case name
    case sex
  }
  
  init?(map: Map) {
  }
  
  mutating func mapping(map: Map) {
    name  <- map[CodingKeys.name.rawValue]
    sex   <- map[CodingKeys.sex.rawValue]
  }
}

let user = User(JSON: ["name": "hi"])

print(user)

print(user!.name!)
print(user!.sex)

print(user!.toJSON())
