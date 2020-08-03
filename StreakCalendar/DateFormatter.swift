//
//  DateFormatter.swift
//  StreakCalendar
//
//  Created by Heather Mason on 8/1/20.
//

import Foundation

extension DateFormatter {
    static var monthYear: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter
    }()
}

extension Calendar {
    func makeDates(in interval: DateInterval, matching components: DateComponents) -> [Date] {
        var dates = [Date]()
        dates.append(interval.start)
        enumerateDates(
            startingAfter: interval.start,
            matching: components,
            matchingPolicy: .nextTime
        ) { date, _, stop in
            if let date = date {
                if date < interval.end {
                    dates.append(date)
                } else {
                    stop = true
                }
            }
        }
        return dates
    }
}
