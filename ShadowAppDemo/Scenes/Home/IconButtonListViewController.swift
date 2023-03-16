import UIKit

class IconButtonListViewController: UIViewController {

    private var list: [IconButtonListData] = [
        .init(icon: .pixIcon, title: "Area Pix"),
        .init(icon: .barIcon, title: "Pagar"),
        .init(icon: .myCardIcon, title: "Cartão")
    ]

    private lazy var iconButtonListView = IconButtonListView(list: list)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        iconButtonListView.delegate = self
    }

    private func setupLayout() {
        view.backgroundColor = .white
        buildHierarchy()
        setupConstraints()
        title = "Icon Button List"
    }
    
    private func buildHierarchy() {
        view.addSubview(iconButtonListView)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
           
            iconButtonListView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            iconButtonListView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            iconButtonListView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            iconButtonListView.heightAnchor.constraint(equalToConstant: 120)
            
        ])
    }
}

// MARK: - IconButtonListViewDelegate
extension IconButtonListViewController: IconButtonListViewDelegate {
    func didSelectItemAt(indexPath: IndexPath) {
        print("Select at: \(indexPath)")
    }
}
