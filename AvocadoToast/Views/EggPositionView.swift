//
//  EggPositionView.swift
//  AvocadoToast
//
//  Created by Marcus on 6/9/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import SwiftUI

struct EggPositionView: View {
	var body: some View {
		Text("EggPositionView")
	}
}

struct EggPositionView_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			EggPositionView()
			EggPositionView()
				.previewDevice("iPhone Xs Max")
		}
	}
}
