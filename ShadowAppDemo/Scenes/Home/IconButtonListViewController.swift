
import UIKit

class IconButtonListViewController: UIViewController {
    
    var listName: [listComponents] = []
    
    private let iconButtonListView: IconButtonListView = {
        let listView = IconButtonListView()
        
        return listView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        
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


