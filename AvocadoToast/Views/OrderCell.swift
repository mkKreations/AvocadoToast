//
//  OrderCell.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct represents an individual
// cell for a completed order in OrderHistory

struct OrderCell: View {
	// no need for property wrapper - just displaying data
	var order: CompletedOrder
	
	var body: some View {
		HStack {
			VStack(alignment: .leading) {
				Text(order.name)
				Text(order.timePlaced.formattedDate())
					.font(.subheadline)
					.foregroundColor(.secondary)
			}
			
			// still learning the power of spacers
			Spacer()
			
			if order.includesSalt {
				ToppingIcon(topping: .salt)
			}
			if order.includesRedPepperFlakes {
				ToppingIcon(topping: .redPepperFlakes)
			}
		}
	}
}

struct OrderCell_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderCell(order: CompletedOrder.sampleOrders[0])
			OrderCell(order: CompletedOrder.sampleOrders[1])
				.previewDevice("iPhone Xs Max")
		}
	}
}
