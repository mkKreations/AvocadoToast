//
//  OrderMainSection.swift
//  AvocadoToast
//
//  Created by Marcus on 6/8/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct is the main section
// of our Form in OrderForm

// better to create small, reusable view
// components

struct OrderMainSection: View {
	@Binding var order: Order
	
	var body: some View {
		Group {
			// KNOWN ISSUE:
			// the layout jumps after navigating to
			// the options of a picker after selecting
			// the picker row in the form
			
			// as far as I know, this is a problem with
			// SwiftUI
			Picker("Bread", selection: $order.bread) {
				ForEach(Bread.allCases) { bread in
					Text(bread.rawValue)
						.tag(bread) // make sure to add tag to uniquely id each case
				}
			}
			Picker("Spread", selection: $order.spread) {
				ForEach(Spread.allCases) { spread in
					Text(spread.rawValue)
						.tag(spread)
				}
			}
			Picker("Avocado", selection: $order.avocado) {
				ForEach(Avocado.allCases) { avocado in
					Text(avocado.rawValue)
						.tag(avocado)
				}
			}
		}
	}
}
