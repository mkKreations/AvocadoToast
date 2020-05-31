//
//  OrderForm.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct is our custom component
// to encapsulate the UI & functionality for
// ordering our avocado toast

struct OrderForm: View {
	// this view struct is not the source
	// of truth for this value
	@Binding var order: Order
	
	var body: some View {
		VStack {
			Text("Avocado Toast")
				.font(.title)
			
			Toggle(isOn: $order.includesSalt) {
				Text("Include Salt")
			}
			Toggle(isOn: $order.includesRedPepperFlakes) {
				Text("Include Red Pepper Flakes")
			}
			Stepper(value: $order.quantity, in: 1...10) {
				Text("Quantity: \(order.quantity)")
			}
			
			Button(action: submitOrder) {
				Text("Order")
			}
		}
		.padding([.leading, .trailing])
	}
	
	private func submitOrder() {
		print("Order submitted!")
	}
}

struct OrderForm_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderForm(order: Binding.constant(Order.sampleOrder))
			OrderForm(order: Binding.constant(Order.sampleOrder))
				.previewDevice("iPhone Xs Max")
		}
	}
}
