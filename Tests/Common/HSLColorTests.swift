//
//  HSLColorTests.swift
//  SubstrateSdk_Tests
//
//  Created by Ruslan Rezin on 14.08.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest

class HSLColorTests: XCTestCase {

    func testTranslation() {
        let color = UIColor.colorWithHSL(hue: 196.0, saturation: 0.65, lightness: 0.53)

        let expectedRed: CGFloat = 57
        let expectedGreen: CGFloat = 172
        let expectedBlue: CGFloat = 213

        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0

        color.getRed(&red, green: &green, blue: &blue, alpha: nil)

        XCTAssertEqual(expectedRed, round(255.0 * red))
        XCTAssertEqual(expectedGreen, round(255.0 * green))
        XCTAssertEqual(expectedBlue, round(255.0 * blue))
    }


}
