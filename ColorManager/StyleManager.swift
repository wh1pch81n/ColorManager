//
//  ColorManager.swift
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

@objc
public class StyleManager: NSObject {
	public static var style: ColorProtocol & FontProtocol = DefaultStyle()
	public static var color: ColorProtocol { return style }
	public static var font: FontProtocol { return style }
}

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
