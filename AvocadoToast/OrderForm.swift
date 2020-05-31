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
	var body: some View {
		Text("OrderForm")
	}
}

struct OrderForm_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			OrderForm()
			OrderForm()
				.previewDevice("iPhone Xs Max")
		}
	}
}
