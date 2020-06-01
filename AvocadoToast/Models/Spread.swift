//
//  Spread.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this enum will represent different
// spread options a user can choose for
// their order

// conformance to CaseIterable so we have
// access to .[allCases]

enum Spread: CaseIterable {
	case almond_butter
	case peanut_butter
	case honey
	case almou
	case tapenade
	case hummus
	case vegemite
	case chutney
}
