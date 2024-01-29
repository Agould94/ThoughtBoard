//
//  ContentView.swift
//  ThoughtBoard
//
//  Created by Alexander Gould on 1/2/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView {
            SurveyView()
                .padding()
                .navigationTitle("My Thoughts")
                .navigationBarTitleDisplayMode(.inline)
                }
        .toolbar{
            ToolbarItem(placement:.principal){
                Text("Title")
                    .font(.largeTitle.bold())
                    .accessibilityAddTraits(.isHeader)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
