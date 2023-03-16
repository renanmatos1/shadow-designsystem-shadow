
import UIKit

class IconBarCodeButtonViewController: UIViewController {
    
    private let barCodeIcon: IconbuttonView = {
        let codeIcon = IconbuttonView(image: .barIcon)

        return codeIcon
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        buildHierarchy()
        setupConstraints()
        view.backgroundColor = .white
        title = "Button Bar Code"
    }
    
    private func buildHierarchy() {
        view.addSubview(barCodeIcon)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            barCodeIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            barCodeIcon.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }

}
