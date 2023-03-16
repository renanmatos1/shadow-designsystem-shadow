import UIKit

class IconButtonListViewCell: UICollectionViewCell {
    static let identifier = "IconButtonListViewCell"
    
    private var iconButton: IconButtonWithLabelView?
    
    public func configure(data: IconButtonListData) {
        iconButton = .init(image: data.icon, title: data.title)
        setupView()
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
    }
    
    private func buildHierarchy() {
        guard let iconButton = iconButton else {
            return
        }
        contentView.addSubview(iconButton)
    }
    
    private func setupConstraints() {
        guard let iconButton = iconButton else {
            return
        }
        NSLayoutConstraint.activate([
            iconButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            iconButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            iconButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            iconButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
