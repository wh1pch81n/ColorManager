//
//  ViewController.swift
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit
import ColorManagerFramework
import ThingFramework

class ViewController: UIViewController {
	@IBOutlet weak var label1: UILabel! {
		willSet {
			newValue?.textColor = StyleManager.color.textColorRegular
		}
	}
	@IBOutlet weak var label2: UILabel!
	@IBOutlet weak var exampleView: UIView!
	@IBOutlet weak var item: UIToolbar! {
		willSet {
			newValue.backgroundColor = StyleManager.color.textColorRegular
		}
	}
	
	var sm: ThingFramework.StyleManager!
	
	override func loadView() {
		super.loadView()
		
		// Using default

		StyleManager.style = DefaultStyle()
		StyleManager.style = "hello"
		//self.sm.name = "9"
		StyleManager().name = "asdf"
		//StyleManager().boar
		let s: String = StyleManager.style
//		StyleManager.style = DefaultStyle()
//		
//		view.backgroundColor = StyleManager.color.backgroundColorRegular
//		label1.textColor = StyleManager.color.textColorRegular
//		label1.font = StyleManager.font.fontRegular
//		
//		label2.textColor = StyleManager.color.textColorLight
//		label2.font = StyleManager.font.fontRegular
//		
//		exampleView.backgroundColor = StyleManager.color.customColor(from: .example)
	}

}

