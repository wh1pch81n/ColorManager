//
//  ColorProtocol.swift
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

/**
Color protocol specifying the generic color options
*/
@objc
public protocol ColorProtocol: NSObjectProtocol {
	var textColorRegular: UIColor { get }
	var textColorLight: UIColor { get }
	var backgroundColorRegular: UIColor { get }
	
	/** To retrieve color options not natively available */
	func customColor(from key: ColorKey) -> UIColor?
}

/**
Font protocol specifying the generic font options
*/
@objc
public protocol FontProtocol: NSObjectProtocol {
	var fontRegular: UIFont { get }
}
