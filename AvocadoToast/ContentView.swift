//
//  ContentView.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	// this is the source of truth
	@ObservedObject var orderDatasource: OrderDatasource = OrderDatasource()
	
	var body: some View {
		// embedding our views in tabView
		TabView {
			NavigationView {
				OrderForm(orderDatasource: orderDatasource)
			}
			.tabItem {
				VStack {
					// good ol SF symbols
					Image(systemName: "square.and.pencil")
					Text("New Order")
				}
			}
			
			NavigationView {
				OrderHistory(orderDatasource: orderDatasource)
			}
			.tabItem {
				VStack {
					// good ol SF symbols
					Image(systemName: "clock.fill")
					Text("History")
				}
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
