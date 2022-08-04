//
//  Theme.swift
//  Scrumdinger
//
//  Created by sunil kumar on 04/08/22.
//

import SwiftUI

/*
Add Color properties from the SwiftUI framework.
SwiftUI treats colors as View instances that we
can add directly to a view hierarchy.
*/

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
            switch self {
            case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
            }
        }
    
    var mainColor: Color {
           Color(rawValue)
       }
}
