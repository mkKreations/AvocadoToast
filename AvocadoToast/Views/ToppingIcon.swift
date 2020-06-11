//
//  ToppingIcon.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will represent a topping
// as an icon in the OrderCell view struct

// all Topping icons will look similar - just
// slight differences in visual configuration

struct ToppingIcon: View {
	// capturing environment var so we can configure icon correctly
	@Environment(\.colorScheme) var colorScheme: ColorScheme
	
	// this is the main dependency
	let topping: Topping
	
	// configure UI based on Topping
	// tuple is a good option since we
	// are only configuring a few values
	
	// pretty cool that to add a completely
	// new ToppingIcon just add a new case
	// to the Topping enum and then cover
	// that new case here in visualConfig
	private var visualConfig: (backgroundColor: Color, displayText: String, foregroundColor: Color) {
		switch topping {
		case .salt:
			return (.primary, "S", colorScheme == .dark ? .black : .white)
		case .redPepperFlakes:
			return (.red, "R", .white)
		case .eggs:
			return (.yellow, "E", .white)
		}
	}
	
	private let size: CGFloat = 25
	
	var body: some View {
		ZStack {
			Circle()
				.foregroundColor(self.visualConfig.backgroundColor)
			
			Text(self.visualConfig.displayText)
				.font(.subheadline)
				.foregroundColor(self.visualConfig.foregroundColor)
		}
		// setting explicit size on ZStack because we want
		// the view rendered from this struct to have set
		// dimensions without exterior dependencies
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
