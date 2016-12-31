//
//  ColorManager.swift
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

/**
Style manager is a globally available, globally settable class of which anyone can grab a theme color, or font
*/
@objc
public class StyleManager: NSObject {
	/** The current style */
	public static var style: ColorProtocol & FontProtocol = DefaultStyle()
	
	/** computed property to get only the ColorProtocol */
	public static var color: ColorProtocol { return style }
	
	/** computed property to get only the FontProtocol */
	public static var font: FontProtocol { return style }
}

/**
An object with the default style
*/
public class DefaultStyle: NSObject, ColorProtocol, FontProtocol {
	
	// MARK: - ColorProtocol
	public let backgroundColorRegular: UIColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
	public let textColorLight: UIColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
	public let textColorRegular: UIColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
	
	public func customColor(from key: ColorKey) -> UIColor? {
		switch key {
		case ColorKey.example:
			return .red
		default:
			return nil
		}
	}
	
	// MARK: - FontProtocol
	public let fontRegular: UIFont = UIFont(name: "Arial", size: 17)!
	
}
