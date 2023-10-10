//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Zachary Garrison on 3/10/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
let Question:String
let Answer:String
    
    init(q: String, a: String) {
        self.Question = q
        self.Answer = a
    }
}
