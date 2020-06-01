//
//  Avocado.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this enum will represent different
// avocado options a user can choose for
// their order

// conformance to CaseIterable so we have
// access to .[allCases]

enum Avocado: CaseIterable {
	case sliced
	case mashed
}
