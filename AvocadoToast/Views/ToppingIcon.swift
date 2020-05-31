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

struct ToppingIcon: View {
	var body: some View {
		Text("ToppingIcon")
	}
}

struct ToppingIcon_Preview: PreviewProvider {
	static var previews: some View {
		Group {
			ToppingIcon()
			ToppingIcon()
				.previewDevice("iPhone Xs Max")
		}
	}
}
