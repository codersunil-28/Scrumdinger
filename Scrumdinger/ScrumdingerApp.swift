//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by sunil kumar on 04/08/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    /*
     We’ll create the source of truth for our app’s data by adding a @State property to ScrumdingerApp.
     Then, we’ll pass a binding to that data down the hierarchy to the list view.
     */
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
