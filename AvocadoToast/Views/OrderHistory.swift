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
	let completedOrders: [CompletedOrder]
	
	var body: some View {
		List(completedOrders) { order in
			VStack(alignment: .leading) {
				Text(order.name)
				Text(order.timePlaced.description)
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
		}
	}
}

struct OrderHistory_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderHistory(completedOrders: CompletedOrder.sampleOrders)
			OrderHistory(completedOrders: CompletedOrder.sampleOrders)
				.previewDevice("iPhone Xs Max")
		}
	}
}
