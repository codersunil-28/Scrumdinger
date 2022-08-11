//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by sunil kumar on 11/08/22.
//

import SwiftUI

struct ThemePicker: View {
    /*
     This binding communicates changes to the theme within
     the theme picker, back to the parent view.
     */
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    /*
                     We can tag subviews when we need to differentiate among them
                     in controls like pickers and lists. Tag values can be any hashable
                     type like in an enumeration.
                     */
                    .tag(theme)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
