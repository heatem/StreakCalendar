//
//  ContentView.swift
//  StreakCalendar
//
//  Created by Heather Mason on 7/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach (0..<7) { square in
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width / 7, height: UIScreen.main.bounds.width / 7)
                    .border(Color.black, width: 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
