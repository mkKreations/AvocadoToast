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
			
			// can't use [Topping] as the iterator
			// because Topping is an enum and can't
			// conform to Identifiable and too lazy
			// to fix 😭
			ForEach(0..<self.order.toppings.count) { index in
				ToppingIcon(topping: self.order.toppings[index])
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