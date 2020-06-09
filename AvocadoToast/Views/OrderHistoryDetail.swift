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
				HStack {
					Text("Bread")
					
					Spacer()
					
//					Text(completedOrder.brea)
				}
			}
		}
	}
}

struct OrderHistoryDetail_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderHistoryDetail(completedOrder: CompletedOrder.sampleOrders[0])
			OrderHistoryDetail(completedOrder: CompletedOrder.sampleOrders[0])
				.previewDevice("iPhone Xs Max")
		}
	}
}
