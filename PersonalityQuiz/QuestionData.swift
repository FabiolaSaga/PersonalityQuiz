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
    case lager = "a LAGER"
    case ipa = "an IPA"
    case saison = "a SAISON"
    case stout = "a STOUT"
    
    var definition: String {
        switch self {
        case .lager:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .ipa:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms"
        case .saison:
            return "You love everything that's soft. You are healthy and full of energy."
        case .stout:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
