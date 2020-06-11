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
	// this is our global model
	@EnvironmentObject var orderDatasource: OrderDatasource
	
	var body: some View {
		// the ease of conforming to Identifiable
		List(orderDatasource.completedOrders) { order in
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
