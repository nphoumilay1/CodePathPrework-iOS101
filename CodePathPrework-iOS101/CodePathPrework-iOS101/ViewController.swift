//
//  ViewController.swift
//  CodePathPrework-iOS101
//
//  Created by Nina Phoumilay on 12/25/23.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var universityLabel: UILabel!
	@IBOutlet weak var jobLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	@IBAction func changeBackgroundColor(_ sender: UIButton) {
		func changeColor() -> (backgroundColor: UIColor, fontColor: UIColor) {
			let red = CGFloat.random(in: 0...1)
			let green = CGFloat.random(in: 0...1)
			let blue = CGFloat.random(in: 0...1)
			
			let backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 0.5)
			
			// Check if RGB values exceed 50%
			let fontColor: UIColor = (red > 0.5 || green > 0.5 || blue > 0.5) ? .white : .black
			
			return (backgroundColor, fontColor)
		}
		
		let colors = changeColor()
		view.backgroundColor = colors.backgroundColor
		
		nameLabel.textColor = colors.fontColor
		universityLabel.textColor = colors.fontColor
		jobLabel.textColor = colors.fontColor
	}
}
