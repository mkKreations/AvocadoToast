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

enum Bread: CaseIterable, Hashable {
	case white
	case wheat
	case multi_grain
	case sourdough
	case rye
}
