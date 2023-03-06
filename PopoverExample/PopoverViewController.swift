import UIKit

class PopoverViewController: UIViewController {
    
    var infoText: String
    @IBOutlet weak var infoLabel: UILabel!
    
    init(infoText: String) {
        self.infoText = infoText
        super.init(nibName: "PopoverViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = infoText
    }
    
}
