//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Fabiola Saga on 3/2/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    init(text: String, type: ResponseType, answers: [Answer]) {
        self.text = text
        self.type = type
        self.answers = answers
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer{
    var text: String
    var type: AnimalType
    
    init( text: String, type: AnimalType) {
        self.text = text
        self.type = type
    }
}

enum AnimalType: String {
    case dog = "DOG"
    case cat = "CAT"
    case rabbit = "RABBIT"
    case turtle = "TURTLE"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
