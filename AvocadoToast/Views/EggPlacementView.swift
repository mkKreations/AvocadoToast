//
//  EggPlacementView.swift
//  AvocadoToast
//
//  Created by Marcus on 6/1/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will allow a user to drag an egg
// on top of their toast to place it where they would
// like it to go

// I have to manually create the assets and it's rather
// late at the moment - so I'll do it tomorrow but here's
// placeholder text for now!

// 51:22 - struct setup
// 53:54 - dependencies
// 54:82 - container view

struct EggPlacementView: View {
	@State private var dragUnitPoint = UnitPoint.center
	private var dragGesture: some Gesture {
		DragGesture()
			.onChanged {
				self.dragUnitPoint = UnitPoint(x: $0.location.x,
																			 y: $0.location.y)
		}
	}
	
	var body: some View {
		ZStack {
			Image("Rye_Full")
				.resizable()
				.scaledToFit()
			
			Image("Egg")
				.resizable()
				.aspectRatio(1.0, contentMode: .fit)
				.frame(width: 250)
				.position(CGPoint(x: self.dragUnitPoint.x,
													y: self.dragUnitPoint.y))
				.gesture(self.dragGesture)
		}
		.padding([.leading, .trailing])
		.border(Color.red, width: 2.0)
	}
}

struct EggPlacementView_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			EggPlacementView()
			EggPlacementView()
				.previewDevice("iPhone Xs Max")
		}
	}
}
