//
//  NSLineBreakModeExtension.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 23..
//  Copyright © 2018년 Min. All rights reserved.
//

import UIKit

extension NSLineBreakMode {
    static var value: [NSLineBreakMode] {
        return [.byClipping, .byCharWrapping, .byWordWrapping, .byTruncatingHead, .byTruncatingMiddle, .byTruncatingTail]
    }
    
    
    var name: String {
        switch self {
        case .byCharWrapping:
            return "byCharWrapping"
        case .byWordWrapping:
            return "byWordWrapping"
        case .byClipping:
            return "byClipping"
        case .byTruncatingHead:
            return "byTruncatingHead"
        case .byTruncatingMiddle:
            return "byTruncatingMiddle"
        case .byTruncatingTail:
            return "byTruncatingTail"
        }
    }
}
