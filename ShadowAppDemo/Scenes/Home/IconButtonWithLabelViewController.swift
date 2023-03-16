
import UIKit

class IconButtonWithLabelViewController: UIViewController {
    
    private let iconButton: IconButtonWithLabelView = {
        let icon = IconButtonWithLabelView(image: .pixIcon, title: "Pix")
        return icon
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
        title = "Button Pix Full"
    }

    private func buildHierarchy() {
        view.addSubview(iconButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            iconButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            iconButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
