//
//  EggPositionView.swift
//  AvocadoToast
//
//  Created by Marcus on 6/9/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

// this view struct will be the container for
// the EggPlacementView

// this view struct will have navigationButtons
// and any other functionality so EggPlacementView
// solely focuses on moving the egg

struct EggPositionView: View {
	@Binding var eggLocation: CGSize
	
	var body: some View {
		EggPlacementView(eggLocation: $eggLocation)
			.navigationBarItems(trailing:
				Button("Reset") {
					print("Reset tapped!")
				}
		)
	}
}

struct EggPositionView_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			EggPositionView(eggLocation: Binding.constant(.zero))
			EggPositionView(eggLocation: Binding.constant(.zero))
				.previewDevice("iPhone Xs Max")
		}
	}
}
