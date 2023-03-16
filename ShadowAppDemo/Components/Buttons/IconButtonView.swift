import UIKit

class IconbuttonView: UIView {
    
    private let size = 70.0
    
    private let iconView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .black
        return view
    }()
    
    init(image: UIImage) {
        super.init(frame: .zero)
        iconView.image = image
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
        backgroundColor = .tertiarySystemGroupedBackground
        layer.cornerRadius = size / 2
    }
    
    private func buildHierarchy() {
        addSubview(iconView)
    }
    
    private func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: size),
            widthAnchor.constraint(equalToConstant: size),
            
            iconView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            iconView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            iconView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            iconView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
