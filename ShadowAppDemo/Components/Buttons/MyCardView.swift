
import UIKit

class MyCardView: UIStackView {
    
    private let icon: UIImage
    private let title: String
    
    private let imageSize = 24.0
    
    private lazy var imageView: UIImageView = {
        let iconImage = UIImageView(image: icon)
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.tintColor = .black
        return iconImage
    }()
    
    private lazy var titleMyCard: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.numberOfLines = 2
        title.textAlignment = .left
        title.font = .systemFont(ofSize: 14, weight: .semibold)
        title.text = "aaaaa"
        
        return title
    }()
    

    init(icon: UIImage, title: String) {
        self.icon = icon
        self.title = title
        super.init(frame: .zero)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
        axis = .horizontal
        backgroundColor = .tertiarySystemGroupedBackground
        layer.cornerRadius = 12
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 10, left: 10, bottom: 10, right: 10)
        spacing = 10
        titleMyCard.text = title
    }
    
    private func buildHierarchy() {
        addArrangedSubview(imageView)
        addArrangedSubview(titleMyCard)
    }
    
    private func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            imageView.heightAnchor.constraint(equalToConstant: imageSize),
            imageView.widthAnchor.constraint(equalToConstant: imageSize),
        
        ])
    }
    
    
}
