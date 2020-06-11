//
//  OrderDetailExtrasSection.swift
//  AvocadoToast
//
//  Created by Marcus on 6/9/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will display the
// toppings a user chose for their
// CompletedOrder

struct OrderDetailExtrasSection: View {
	var completedOrder: CompletedOrder
	
	var body: some View {
		Group {
			ForEach(completedOrder.toppings) { topping in
				Text(topping.rawValue)
			}
		}
	}
}

// the previews display one Topping per preview
// but when this view is within a Section, all
// Topping's are grouped together

struct OrderDetailExtrasSection_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderDetailExtrasSection(completedOrder: CompletedOrder.sampleOrders[0])
			OrderDetailExtrasSection(completedOrder: CompletedOrder.sampleOrders[1])
				.previewDevice("iPhone Xs Max")
		}
	}
}
