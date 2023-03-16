

import UIKit

class MyCardsViewController: UIViewController {
    
    private lazy var myCard: MyCardView = {
        let card = MyCardView(icon: .myCardIcon, title: "Meus Cartões")
        
        return card
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
       
    }
    
    private func setupLayout() {
        view.backgroundColor = .white
        buildHierarchy()
        setupConstraints()
        title = "My Cards"
    }
    
    private func buildHierarchy() {
        view.addSubview(myCard)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            myCard.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            myCard.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            myCard.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            
        ])
    }

}
