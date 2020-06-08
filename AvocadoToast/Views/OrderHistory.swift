//
//  OrderHistory.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will encapsulate the UI
// & functionality for displaying previously
// made orders

struct OrderHistory: View {
	// no need for property wrapper - just displaying data
	let completedOrders: [CompletedOrder] = CompletedOrder.sampleOrders
	
	var body: some View {
		List(completedOrders) { order in
			OrderCell(order: order)
		}
		.navigationBarTitle("Previous Orders")
	}
}

struct OrderHistory_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderHistory()
//				.environment(\.colorScheme, .dark)
			OrderHistory()
				.previewDevice("iPhone Xs Max")
				.environment(\.colorScheme, .dark)
		}
	}
}
