import UIKit

class IconButtonListView: UIView {
    
    var list: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "1", "1", "1"]
    
    var listName: [listComponents] = []
    
    private let colectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 10.0
        layout.itemSize = .init(width: 80.0, height: 120.0)
    
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .green
        
        return collection
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        buildHierarchy()
        setupConstraints()
        setupCollectionView()
        backgroundColor = .tertiarySystemGroupedBackground
        
    }
    
    private func buildHierarchy() {
        addSubview(colectionView)
    }
    
    private func setupCollectionView() {
        colectionView.dataSource = self
        colectionView.register(IconButtonListViewCell.self, forCellWithReuseIdentifier: IconButtonListViewCell.identifier)
    }
    
    private func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            colectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            colectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            colectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            colectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}

extension IconButtonListView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        listName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IconButtonListViewCell.identifier, for: indexPath) as? IconButtonListViewCell else {
            return UICollectionViewCell()
            
        }
        cell.configure(iconList: listName[indexPath.row])
        return cell
    }
}

