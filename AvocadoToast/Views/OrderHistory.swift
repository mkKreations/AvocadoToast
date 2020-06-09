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
	// this is the essentially our global model
	// could have used @EnvironmentObject as well
	@ObservedObject var orderDatasource: OrderDatasource
	
	var body: some View {
		List(orderDatasource.completedOrders) { order in
			OrderCell(order: order)
		}
		.navigationBarTitle("Previous Orders")
	}
}

struct OrderHistory_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderHistory(orderDatasource: OrderDatasource())
//				.environment(\.colorScheme, .dark)
			OrderHistory(orderDatasource: OrderDatasource())
				.previewDevice("iPhone Xs Max")
				.environment(\.colorScheme, .dark)
		}
	}
}
