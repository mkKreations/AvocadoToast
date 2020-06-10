//
//  OrderHistoryDetail.swift
//  AvocadoToast
//
//  Created by Marcus on 6/9/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct OrderHistoryDetail: View {
	// no need for property wrapper - just displaying data
	var completedOrder: CompletedOrder
	
	// access to our global model without having
	// to pass it in directly to the view struct
	@EnvironmentObject var orderDatasource: OrderDatasource
	
	// this var is a workaround since "Closure containing a
	// declaration cannot be used within function builder
	// 'ViewBuilder'
	
	// ONLY call this var when you KNOW you have a Date value
	// to return - since the underlying method can return nil -
	// we're unpacking this here with the confidence that it
	// will only be called when we know it will have a value
	
	// keeping it private so other types don't fuddle around
	// and cause app to crash
	private var lastOrderedDate: Date {
		return orderDatasource.lastOrderedDate(forCompletedOrder: completedOrder)!
	}
	
	var body: some View {
		Form {
			Section(header: Text("SUMMARY")) {
				OrderDetailMainSection(completedOrder: completedOrder)
			}

			// only display if we have Toppings
			if completedOrder.toppings.count > 0 {
				Section(header: Text("EXTRAS")) {
					OrderDetailExtrasSection(completedOrder: completedOrder)
				}
			}
			
			// "can't use closure using control flow statement within
			// ViewBuilder param" - basically means that I can't use
			// optional chaining to capture a variable within a ViewBuilder -
			// instead have to directly check against nil & extract return
			// explicitly within code block
			if orderDatasource.lastOrderedDate(forCompletedOrder: completedOrder) != nil {
				Section(header: Text("LAST ORDERED ON")) {
					// we're forecefully extacting here because we know we
					// will have a Date value - check computed property
					Text(lastOrderedDate.formattedHistoryDetailDate())
				}
			}
		}
		.padding(.top)
		.navigationBarTitle(Text(completedOrder.timePlaced.formattedHistoryDate()),
												displayMode: .inline)
	}
}

struct OrderHistoryDetail_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderHistoryDetail(completedOrder: CompletedOrder.sampleOrders[0])
			OrderHistoryDetail(completedOrder: CompletedOrder.sampleOrders[1])
				.previewDevice("iPhone Xs Max")
		}
	}
}
