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
	@State private var dragLocation = CGPoint.zero
	
	var body: some View {
		GeometryReader { geo in
			ZStack {
				Image("Rye_Full")
					.resizable()
					.scaledToFit()

				Image("Egg")
					.resizable()
					.aspectRatio(1.0, contentMode: .fit)
					.frame(width: 250)
//					.position(CGPoint(x: geo.frame(in: .local).size.width + self.dragLocation.x,
//														y: geo.frame(in: .local).size.height + self.dragLocation.y))
					.position(CGPoint(x: (geo.size.width / 2.0) + self.dragLocation.x,
														y: (geo.size.height  / 2.0) + self.dragLocation.y))
//					.position(CGPoint(x: self.dragLocation.x,
//														y: self.dragLocation.y))
					.gesture(
						DragGesture()
							.onChanged {
								let newLocation = CGPoint(x: $0.location.x - (geo.size.width / 2.0),
																					y: $0.location.y - (geo.size.height / 2.0))
								self.dragLocation = newLocation
							}
							.onEnded {
								let newLocation = CGPoint(x: $0.location.x - (geo.size.width / 2.0),
																					y: $0.location.y - (geo.size.height / 2.0))
								self.dragLocation = newLocation
							}
					)
			}
			.padding([.leading, .trailing])
		}
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
