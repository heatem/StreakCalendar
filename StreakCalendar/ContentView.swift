//
//  ContentView.swift
//  StreakCalendar
//
//  Created by Heather Mason on 7/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<CollectionViewCell.row) { i in
                HStack(spacing: 0) {
                    ForEach(0..<CollectionViewCell.column) { j in
                        CollectionViewCell(row: i, column: j)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
