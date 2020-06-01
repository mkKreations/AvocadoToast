//
//  Bread.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this enum will represent different
// bread options a user can choose for
// their order

// conformance to CaseIterable so we have
// access to .[allCases]

// conforms to Hashable so we can use instances
// of this type as the SelectionValue for Picker

// string raw values to provide the titles for
// each

enum Bread: String, CaseIterable, Hashable {
	case white = "White"
	case wheat = "Wheat"
	case multi_grain = "Multi-Grain"
	case sourdough = "Sourdough"
	case rye = "Rye"
}
