
import Foundation

struct Question{
    let text : String
    let answers : [String]
    let correct : String
    
    init(q: String, a: [String], c: String) {
       text = q
       answers = a
       correct = c
    }
}
