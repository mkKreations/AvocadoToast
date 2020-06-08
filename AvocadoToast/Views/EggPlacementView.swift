//
//  EggPlacementView.swift
//  AvocadoToast
//
//  Created by Marcus on 6/1/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// TODO:
// restrict dragging of egg to bounds of ZStack
// check line 70

// this view struct will allow a user to drag an egg
// on top of their toast to place it where they would
// like it to go

struct EggPlacementView: View {
	@State private var dragUnitPoint = UnitPoint.center
	
	// @GestureState is a property wrapper meant to work
	// specifically with types that conform to Gesture
	// One of the perks of using it is that it returns to
	// its initial value after the gesture event
	@GestureState private var dragOffset: CGSize = .zero
	
	// since @GestureState returns back to its initial
	// state - this property will keep track of our
	// accumulated drag translation and update the view's
	// offset accordingly
	@State private var accumulatedDragTranslation: CGSize = .zero
	
	// our drag gesture - keeping type hidden using opaque
	// type but compiler knows
	private var dragGesture: some Gesture {
		DragGesture()
			.updating($dragOffset) { (value, state, transaction) in
				// maintaining property state as user drags
				// state will return back to initial value
				// after drag event
				state = value.translation
				print(value.translation)
			}
			.onEnded { val in
				// update our property that's keeping track of
				// the accumulated translation so we can update
				// the offset of the view accordingly
				self.accumulatedDragTranslation.width += val.translation.width
				self.accumulatedDragTranslation.height += val.translation.height
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
				// since dragOffset resets to initial value
				// we have to keep track of translation ourselves
				.offset(x: self.dragOffset.width + self.accumulatedDragTranslation.width,
								y: self.dragOffset.height + self.accumulatedDragTranslation.height)
				.gesture(self.dragGesture)
		}
		// setting flexible height for ZStack frame as current solution to TODO
		// this allows user to place egg nearly anywhere on screen (vertically)
		// and still be able to interact with it
		// before - the ZStack was the height of the largest Image (the bread)
		// and if user dragged the egg outside the bounds - then they couldn't
		// interact with it
		// overall, I want to remove setting flexible height for frame and instead
		// prevent dragging outside the bounds of the view
		.frame(minHeight: 0, idealHeight: .infinity, maxHeight: .infinity)
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
