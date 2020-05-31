//
//  ContentView.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	// this view struct is the source of truth
	@State private var order = Order.sampleOrder
	
	var body: some View {
		// state kept in sync via binding
		OrderForm(order: $order)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
