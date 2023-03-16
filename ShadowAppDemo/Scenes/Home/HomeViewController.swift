import UIKit
import SwiftUI

class HomeViewController: UIViewController {
    
    var lisName: [HomeItem] = HomeItem.allCases
    
    // MARK: - UI
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .tertiarySystemGroupedBackground
        return tableView
    }()
    
    
    // MARK: - Properties
    
    // MARK: - Init
    public init() {
        super.init(nibName: nil, bundle: nil)
        buildHierarchy()
        setupConstraints()
        applyAdditionalChanges()
        tableViewSetup()
        view.backgroundColor = .tertiarySystemGroupedBackground
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20.0),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20.0),
        ])
    }
    
    private func applyAdditionalChanges() {
        view.backgroundColor = .systemBackground
        navigationItem.title = "Home"
        navigationItem.largeTitleDisplayMode = .always
    }
    
    private func tableViewSetup() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
   private func showViewController(item: HomeItem) {
       var viewController: UIViewController?
       
        switch item {
        case .button:
            viewController = CustomButtonViewController()
            
        case .iconButtonView:
            viewController = IconButtonViewController()
            
        case .iconButtonWithLabel:
            viewController = IconButtonWithLabelViewController()
            
        case .iconBarCodeButton:
            viewController = IconBarCodeButtonViewController()
            
        case .iconBarCodeButtonFull:
            viewController = IconBarCodeButtonFullViewController()
            
        case .myCard:
            viewController = MyCardsViewController()
            
        case .iconButtonList:
            viewController = IconButtonListViewController()
        }
       
       guard let viewController = viewController else {
           return
       }
       navigationController?.pushViewController(viewController, animated: true)
    }
}



extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lisName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = lisName[indexPath.row].rawValue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = lisName[indexPath.row]
        
        showViewController(item: item)
    }
    
}

