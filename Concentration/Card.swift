//
//  Card.swift
//  Concentration
//
//  Created by Liyou on 2018/1/19.
//  Copyright © 2018年 Felink. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var hashValue: Int { return self.identifier }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
