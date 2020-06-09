//
//  OrderDetailMainSection.swift
//  AvocadoToast
//
//  Created by Marcus on 6/9/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct OrderDetailMainSection: View {
	// no property wrapper here
	// just displaying data
	var completedOrder: CompletedOrder
	
	var body: some View {
		Group {
			HStack {
				Text("Bread")
				Spacer()
				Text(completedOrder.bread.rawValue)
					.foregroundColor(.secondary)
			}
			HStack {
				Text("Spread")
				Spacer()
				Text(completedOrder.spread.rawValue)
					.foregroundColor(.secondary)
			}
			HStack {
				Text("Avocado")
				Spacer()
				Text(completedOrder.avocado.rawValue)
					.foregroundColor(.secondary)
			}
		}
	}
}

struct OrderDetailMainSection_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderDetailMainSection(completedOrder: CompletedOrder.sampleOrders[0])
			OrderDetailMainSection(completedOrder: CompletedOrder.sampleOrders[1])
				.previewDevice("iPhone Xs Max")
		}
	}
}
