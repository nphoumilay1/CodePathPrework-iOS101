import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var institutionLabel: UILabel!
	@IBOutlet weak var jobLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func changeBackgroundColor(_ sender: UIButton) {
		func calculateLuminance(red: CGFloat, green: CGFloat, blue: CGFloat) -> CGFloat {
			return 0.299 * red + 0.587 * green + 0.114 * blue
		}

		func changeColor() -> (backgroundColor: UIColor, fontColor: UIColor) {
			let red = CGFloat.random(in: 0...1)
			let green = CGFloat.random(in: 0...1)
			let blue = CGFloat.random(in: 0...1)

			let backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 0.5)

			// Calculate luminance of the background color
			let luminance = calculateLuminance(red: red, green: green, blue: blue)

			// Adjust font color based on luminance
			let fontColor: UIColor = (luminance > 0.5) ? .black : .white

			return (backgroundColor, fontColor)
		}

		let colors = changeColor()
		view.backgroundColor = colors.backgroundColor

		nameLabel.textColor = colors.fontColor
		institutionLabel.textColor = colors.fontColor
		jobLabel.textColor = colors.fontColor
	}
}
