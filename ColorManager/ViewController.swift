//
//  ViewController.swift
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var label1: UILabel!
	@IBOutlet weak var label2: UILabel!
	@IBOutlet weak var exampleView: UIView!
	
	override func loadView() {
		super.loadView()
		
		// Using default
		StyleManager.style = DefaultStyle()
		
		view.backgroundColor = StyleManager.color.backgroundColorRegular
		label1.textColor = StyleManager.color.textColorRegular
		label1.font = StyleManager.font.fontRegular
		
		label2.textColor = StyleManager.color.textColorLight
		label2.font = StyleManager.font.fontRegular
		
		exampleView.backgroundColor = StyleManager.color.customColor(from: .example)
	}

}

