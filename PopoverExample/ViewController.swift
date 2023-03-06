import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showPopoverButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Fix navigation bar color in iOS 15 and above
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            appearance.backgroundColor = UIColor(named: "primaryColor")
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        }
    }

    @IBAction func showPopoverAction(_ sender: UIButton) {
        let popoverContent = PopoverViewController(infoText: "Username must be between 3-20 and can only consist of alphanumeric characters.")
        presentPopover(self, popoverContent, sender: showPopoverButton, size: CGSize(width: 315, height: 120), arrowDirection: .down)
    }
}
