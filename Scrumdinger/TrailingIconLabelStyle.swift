//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by sunil kumar on 07/08/22.
//
//  Create a label style to stack the scrum length and clock icon horizontally.

import SwiftUI

/*
With the LabelStyle protocol, we can create a consistent design
throughout an app by reusing the same label style for several views.
*/
struct TrailingIconLabelStyle: LabelStyle {
    
    /*
    The system calls this method for each Label instance in a
    view hierarchy where this style is the current label style.
    */
    func makeBody(configuration: Configuration) -> some View {
            HStack {
                
                /*
                The configuration parameter is a LabelStyleConfiguration, which contains the
                icon and title views. These views represent the label’s image and label text.
                */
                configuration.title
                configuration.icon
                    
                    }
        }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
