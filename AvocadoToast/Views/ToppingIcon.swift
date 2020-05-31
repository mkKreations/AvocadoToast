//
//  ToppingIcon.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will represent a topping
// as an icon in the OrderHistory view struct

// all Topping icons will look similar - just
// slight differences in visual configuration

//struct ToppingShapeIcon: Shape {
//	func path(in rect: CGRect) -> Path {
//		let path =
//	}
//}

struct ToppingIcon: View {
	let topping: Topping
	
	// configure UI based on Topping
	// tuple is a good option since we
	// are only configuring two values
	private var visualConfig: (backgroundColor: Color, displayText: String) {
		switch topping {
		case .salt:
			return (Color.black, "S")
		case .redPepperFlakes:
			return (Color.red, "R")
		}
	}
	
	var body: some View {
		ZStack {
			Circle()
				.foregroundColor(visualConfig.backgroundColor)

			// not sure if the sizing for this is going to work
			// I want it to fill all available space within circle
			// need to experiment with it first
			Text(visualConfig.displayText)
		}
	}
}

struct ToppingIcon_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			ToppingIcon(topping: Topping.salt)
			ToppingIcon(topping: Topping.redPepperFlakes)
				.previewDevice("iPhone Xs Max")
		}
	}
}
