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
		Form {
			Section(header: Text("Avocado Toast").font(.title)) {
				// we can not currently interact with pickers because
				// this form is not embedded in a nav view
				Picker("Bread", selection: $order.bread) {
					ForEach(Bread.allCases) { bread in
						Text(bread.rawValue)
							.tag(bread) // make sure to add tag to uniquely id each case
					}
				}
				Picker("Spread", selection: $order.spread) {
					ForEach(Spread.allCases) { spread in
						Text(spread.rawValue)
							.tag(spread)
					}
				}
				Picker("Avocado", selection: $order.avocado) {
					ForEach(Avocado.allCases) { avocado in
						Text(avocado.rawValue)
							.tag(avocado)
					}
				}
			}
			
			Section {
				Toggle(isOn: $order.includesSalt) {
					Text("Include Salt")
				}
				Toggle(isOn: $order.includesRedPepperFlakes) {
					Text("Include Red Pepper Flakes")
				}
				Stepper(value: $order.quantity, in: 1...10) {
					Text("Quantity: \(order.quantity)")
				}
			}
			
			Section {
				Button(action: submitOrder) {
					Text("Order")
				}
			}
		}
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
