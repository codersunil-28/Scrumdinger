//
//  DetailView.swift
//  Scrumdinger
//
//  Created by sunil kumar on 08/08/22.
//

import SwiftUI

struct DetailView: View{
    let scrum: DailyScrum
    
    var body: some View{
        Text("Hello, world!")
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView {
                    DetailView(scrum: DailyScrum.sampleData[0])
                }
    }
}
