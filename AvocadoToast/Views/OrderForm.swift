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
	// this view struct is the source
	// of truth for this value
	@State var order: Order = Order.sampleOrder
	
	// this is our global model
	@EnvironmentObject var orderDatasource: OrderDatasource

	var body: some View {
		Form {
			Section {
				OrderFormMainSection(order: $order)
			}
			
			Section {
				OrderFormToggleSection(order: $order)
			}
			
			Section {
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
		.navigationBarTitle("Avocado Toast")
	}
	
	// format order name
	private var formattedOrderName: String {
		return "\(order.bread.rawValue) with \(order.spread.rawValue)"
	}
	// gather toppings for order
	private var getOrderToppings: [Topping] {
		var tmp = [Topping]()
		if order.includesSalt {
			tmp.append(Topping.salt)
		}
		if order.includesRedPepperFlakes {
			tmp.append(Topping.redPepperFlakes)
		}
		if order.includesEgg {
			tmp.append(Topping.eggs)
		}
		return tmp
	}
	
	private func submitOrder() {
		// create CompletedOrder
		let completedOrder = CompletedOrder(name: formattedOrderName,
																				timePlaced: Date(),
																				eggLocation: order.eggLocation,
																				toppings: getOrderToppings,
																				bread: order.bread,
																				spread: order.spread,
																				avocado: order.avocado)
		// append to global datasource
		orderDatasource.completedOrders.append(completedOrder)
	}
}

struct OrderForm_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			NavigationView {
				OrderForm()
			}
			NavigationView {
				OrderForm()
			}
			.previewDevice("iPhone Xs Max")
		}
	}
}
