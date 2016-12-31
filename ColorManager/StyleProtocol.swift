//
//  ColorProtocol.swift
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

@objc
public protocol ColorProtocol: NSObjectProtocol {
	var textColorRegular: UIColor { get }
	var textColorLight: UIColor { get }
	var backgroundColorRegular: UIColor { get }
	
	func customColor(from key: ColorKey) -> UIColor?
}

@objc
public protocol FontProtocol: NSObjectProtocol {
	var fontRegular: UIFont { get }
}
