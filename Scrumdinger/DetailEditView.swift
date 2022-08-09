//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by sunil kumar on 10/08/22.
//

import SwiftUI

struct DetailEditView: View {
    //The current view manages the state of the data property.
    @State private var data = DailyScrum.Data()
    
    var body: some View {
        Form{
            Section(header: Text("Meeting Info")) {
                /*
                 TextField takes a binding to a String. We can use
                 the $ syntax to create a binding to data.title.
                */
                TextField("Title", text: $data.title)
                HStack {
                    //Passing a step value of 1, limits the user to choosing whole numbers.
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                        //In the slider’s label closure, add a Text view for accessibility use.
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
            }
        }
    }
}


struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
