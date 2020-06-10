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
		}
		.padding(.top)
		.navigationBarTitle(Text(completedOrder.timePlaced.formattedDate()),
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
