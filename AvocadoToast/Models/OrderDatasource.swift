//
//  OrderDatasource.swift
//  AvocadoToast
//
//  Created by Marcus on 6/8/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this datasource object will be the
// common object shared between all
// base level views of the app

// it will contain the data that I want
// to share between views that are not
// related

// conformance to ObservableObject so that
// any @Published properties will notify
// their view subscribers to update

class OrderDatasource: ObservableObject {
	// publish the changes to the value of this
	// property to any View subscribers
	@Published var completedOrders = CompletedOrder.sampleOrders
	
	// we return the most recent time a user ordered
	// the passed in Order, only if that Order has been
	// previously ordered - if Order has never been
	// ordered before, we return nil
	func lastOrderedDate(forCompletedOrder completedOrder: CompletedOrder) -> Date? {
		var completedOrderIndex: Int!
		// we can not use .firstIndex(of:) because it returns
		// the index of the instance that equates to the passed
		// in parameter based on the method we define to conform
		// to Equatable - what we really want is reference based
		// equality and for that reason we loop thru and equate
		// using ( === )
		for order in completedOrders.enumerated() {
			// we know that completedOrder is in the completedOrders
			// array so we don't have to return nil here if we don't
			// find the completedOrder in self.completedOrders
			if order.element === completedOrder {
				completedOrderIndex = order.offset
				break
			}
		}
		
		// get all the items up to the selected CompletedOrder
		// there's no need to inspect every item in self.completedOrders
		let subCompletedOrders = completedOrders[0...completedOrderIndex]
		
		// using Equatable conformance equality ( == ) to filter
		// all instances, within subarray, that equate to completedOrder
		// param using the static method we defined
		let filteredsubOrders = subCompletedOrders.filter { $0 == completedOrder }
		
		// if there are previous orders - then go within code block
		// otherwise, return nil
		if filteredsubOrders.count > 1 {
			// get the second to last CompletedOrder since the one
			// passed in is the last CompletedOrder in the filtered
			// sub array - because array.count - 1 is the last element
			// in the array
			let previousCompletedOrder = filteredsubOrders[filteredsubOrders.count - 2]
			return previousCompletedOrder.timePlaced
		}
		return nil
	}
}
