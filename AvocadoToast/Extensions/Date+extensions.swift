//
//  Date+extensions.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// link to date format specifiers
// https://nsdateformatter.com/
extension Date {
	// this date format is for displaying the date
	// string within OrderHistory
	func formattedHistoryDate() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "MM/dd/yy, h:mm a" // set desired format for date
		return dateFormatter.string(from: self)
	}

	// this date format is for displaying the date
	// string within OrderHistoryDetail - less used
	// than previous method
	func formattedHistoryDetailDate() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "MMM d, yyyy" // set desired format for date
		return dateFormatter.string(from: self)
	}
}
