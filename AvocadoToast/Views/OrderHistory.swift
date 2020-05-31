//
//  OrderHistory.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will encapsulate the UI
// & functionality for displaying previously
// made orders

struct OrderHistory: View {
	var body: some View {
		Text("OrderHistory")
	}
}

struct OrderHistory_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderHistory()
			OrderHistory()
				.previewDevice("iPhone Xs Max")
		}
	}
}
