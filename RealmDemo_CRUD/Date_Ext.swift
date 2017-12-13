//
//  Date_Ext.swift
//  RealmDemo_CRUD
//
//  Created by leo.chou on 2017/12/13.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import Foundation

extension Date {

    func millisecond() -> Double {
        return floor(self.timeIntervalSince1970*1000)
    }

    func millisecondString() -> String {
        return "\(Int64(self.timeIntervalSince1970 * 1000))"
    }

    func toYMDString() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd"
        return dateFormat.string(from: self)
    }

    func toSymbolDateString() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "hh:mm a"
        dateFormat.amSymbol = "am"
        dateFormat.pmSymbol = "pm"
        return dateFormat.string(from: self)
    }

    func toHourAndMinutesString() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "HH:mm"
        return dateFormat.string(from: self)
    }

    func toWeekdayString() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "EEE,"
        return dateFormat.string(from: self)
    }

    func toDateString() -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter.string(from: self)
    }

    func toMonthString() -> String {
        let formatter1: DateFormatter = DateFormatter()
        formatter1.dateFormat = "MMM"
        return formatter1.string(from: self)
    }

    func toDayString() -> String {
        let formatter2: DateFormatter = DateFormatter()
        formatter2.dateFormat = "dd"
        return formatter2.string(from: self)
    }
}
