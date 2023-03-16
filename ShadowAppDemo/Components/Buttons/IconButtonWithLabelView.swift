import UIKit

class IconButtonWithLabelView: UIStackView {
    
    private let icon: UIImage
    private let title: String
    
    private lazy var iconButton: IconbuttonView = {
        let iconButton = IconbuttonView(image: icon)
        
        return iconButton
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    init(image: UIImage, title: String) {
        self.icon = image
        self.title = title
        super.init(frame: .zero)
        setupView()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraint()
        axis = .vertical
        alignment = .center
        titleLabel.text = title
        spacing = 5
    }
    
    private func buildHierarchy() {
        addArrangedSubview(iconButton)
        addArrangedSubview(titleLabel)
    }
    
    private func setupConstraint() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}

