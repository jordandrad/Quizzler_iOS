//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jordan Andrade on 18/10/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

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
