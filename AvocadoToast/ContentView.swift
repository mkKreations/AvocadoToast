//
//  ContentView.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct ContentView: View {	
	var body: some View {
		TabView {
			NavigationView {
				OrderForm()
			}
			.tabItem {
				VStack {
					Image(systemName: "square.and.pencil")
					Text("New Order")
				}
			}
			
			NavigationView {
				OrderHistory()
			}
			.tabItem {
				VStack {
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
