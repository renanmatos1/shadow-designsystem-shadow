import UIKit

class IconBarCodeButtonView: UIView {
    
    private let size = 70.0
    
    private let barCodeIcon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.tintColor = .black
        
        return icon
    }()
    
    init(image: UIImage) {
        super.init(frame: .zero)
        
        barCodeIcon.image = image
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
        addSubview(barCodeIcon)
    }
    
    private func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: size),
            widthAnchor.constraint(equalToConstant: size),
            
            barCodeIcon.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            barCodeIcon.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            barCodeIcon.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            barCodeIcon.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }

}
