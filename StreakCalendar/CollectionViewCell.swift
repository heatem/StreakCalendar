//
//  CollectionViewCell.swift
//  StreakCalendar
//
//  Created by Heather Mason on 7/20/20.
//

import SwiftUI

struct CollectionViewCell: View {
    static let column = 7
    static let row = 4
    let width = UIScreen.main.bounds.width / 7
    let dates = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]
    var index = 0
    init(row: Int, column: Int) {
        index = row + column + (row * 6)
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: width, height: width)
                .foregroundColor(.blue)
                .border(Color.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Text("\(dates[index])")
                // index + 1 accomplishes the same numbers but i think I'll need an array later
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(row: 0, column: 1)
    }
}
