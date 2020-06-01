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

struct EggPlacementView: View {
	var body: some View {
		VStack {
			Text("More to come later as I have to create the assets for this view in Sketch!!!")
				.multilineTextAlignment(.center)
			Text("And they're pretty complex assets to create from scratch!!")
				.multilineTextAlignment(.center)
			Text("So just placeholder text for now! :)")
				.multilineTextAlignment(.center)
		}
		.padding([.leading, .trailing])
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
