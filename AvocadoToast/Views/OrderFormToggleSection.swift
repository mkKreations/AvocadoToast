//
//  OrderFormToggleSection.swift
//  AvocadoToast
//
//  Created by Marcus on 6/8/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct is the toggle section
// of our Form in OrderForm

// better to create small, reusable view
// components

struct OrderFormToggleSection: View {
	// need a @Binding here to pass to Toggle's
	@Binding var order: Order

	var body: some View {
		Group {
			Toggle(isOn: $order.includesSalt) {
				Text("Include Salt")
			}
			Toggle(isOn: $order.includesRedPepperFlakes) {
				Text("Include Red Pepper Flakes")
			}
			// pass an animation() with the binding so
			// that upon state change - we receive an
			// animation
			Toggle(isOn: $order.includesEgg.animation()) {
				Text("Include Egg")
			}
			if order.includesEgg {
				// we will navigate over to this screen if the
				// user wants an egg included - passing the
				// @Binding to update the value of any dependencies
				NavigationLink(destination: EggPositionView(eggLocation: $order.eggLocation)) {
					Text("Place my egg!")
				}
			}
		}
	}
}
