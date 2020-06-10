//
//  ContentView.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var orderDatasource: OrderDatasource
	
	var body: some View {
		// embedding our views in tabView
		TabView {
			NavigationView {
				OrderForm()
					// pass object to be accessible in environment
					.environmentObject(orderDatasource)
			}
			.tabItem {
				VStack {
					// good ol SF symbols
					Image(systemName: "square.and.pencil")
					Text("New Order")
				}
			}
			
			NavigationView {
				OrderHistory()
					// pass object to be accessible in environment
					.environmentObject(orderDatasource)
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
