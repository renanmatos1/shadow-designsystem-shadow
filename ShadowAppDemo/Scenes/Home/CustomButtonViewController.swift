import UIKit

class CustomButtonViewController: UIViewController {

    private let customButton: RMButton = {
        let button = RMButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.type = .primary
        button.setTitle("Primary", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        return button
    }()
    
    private let customButtonTwo: RMButton = {
        let button = RMButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.type = .secondary
        button.setTitle("Secondary", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let customButtonThree: RMButton = {
        let button = RMButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.type = .tertiatry
        button.setTitle("Tertiary", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        return button
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack

    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       setupView()
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
        title = "Custom Button"
    }
    
    private func buildHierarchy() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(customButton)
        stackView.addArrangedSubview(customButtonTwo)
        stackView.addArrangedSubview(customButtonThree)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        ])
    }
}
