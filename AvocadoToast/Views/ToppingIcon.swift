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
	private let size: CGFloat = 25
	
	var body: some View {
		// setting explicit size on ZStack because we want
		// the view rendered from this struct to have set
		// dimensions
		ZStack {
			Circle()
				.foregroundColor(self.visualConfig.backgroundColor)
			
			Text(self.visualConfig.displayText)
				.font(.subheadline)
				.foregroundColor(.white)
		}
		.frame(width: size, height: size)
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
