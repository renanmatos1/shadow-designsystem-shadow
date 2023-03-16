
import UIKit

class IconBarCodeButtonFullViewController: UIViewController {

    private let barCodeIcon: IconBarCodeButtonFullView = {
        let barIcon = IconBarCodeButtonFullView(image: .barIcon, title: "Pagar")
        
        return barIcon
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        buildHierarchy()
        setupConstraints()
        title = "Button Bar Code Full"
    }
    
    private func buildHierarchy() {
        view.addSubview(barCodeIcon)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            barCodeIcon.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            barCodeIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
    }
}
