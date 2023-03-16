
import UIKit

class IconButtonViewController: UIViewController {
    
    private let iconButton: IconbuttonView = {
        let button = IconbuttonView(image: .pixIcon)

        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
        title = "Button Pix Simple"
    }

    private func buildHierarchy() {
        view.addSubview(iconButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            iconButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
