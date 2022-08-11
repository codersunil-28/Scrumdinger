//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by sunil kumar on 07/08/22.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        List {
            /*
             We'll use array binding syntax to retrieve a binding to an individual scrum.
             To use array binding syntax in SwiftUI, we’ll pass a binding to an array into
             a ForEach loop.
             
             We used array binding syntax to easily bind each element of
             the list of scrums to its associate detail view.
             */
            ForEach($scrums) { $scrum in
                //SwiftUI automatically adds a disclosure indicator to the row.
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                                        
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")
                }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: .constant(DailyScrum.sampleData))
        }
    }
}
