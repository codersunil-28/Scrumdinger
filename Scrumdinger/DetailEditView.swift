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
    //The newAttendeeName property will hold the attendee name that the user enters.
    @State private var newAttendeeName = ""
    
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
                    .accessibilityValue("\(Int(data.lengthInMinutes)) minutes")
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $data.theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                /*
                Add an onDelete modifier to remove attendees from the scrum data.
                 
                The framework calls the closure you pass to onDelete when the
                user swipes to delete a row.
                */
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                }
                HStack {
                    /*
                     The binding keeps newAttendeeName in sync with the contents of the
                     text field. It doesn’t affect the original DailyScrum model data.
                    */
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                                withAnimation {
                                    let attendee = DailyScrum.Attendee(name: newAttendeeName)
                                    data.attendees.append(attendee)
                                    newAttendeeName = ""
                                }
                          }) {
                    Image(systemName: "plus.circle.fill")
                        .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
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
