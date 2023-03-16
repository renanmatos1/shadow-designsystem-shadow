import UIKit

protocol IconButtonListViewDelegate: AnyObject {
    func didSelectItemAt(indexPath: IndexPath)
}

class IconButtonListView: UIView {

    let list: [IconButtonListData]

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

    public weak var delegate: IconButtonListViewDelegate?
    
    init(list: [IconButtonListData]) {
        self.list = list
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        print("denit: IconButtonListView")
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
//        DispatchQueue.main.async {
//            self.collectionView.isScrollEnabled = true
//        }

        colectionView.dataSource = self
        colectionView.delegate = self
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
        list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IconButtonListViewCell.identifier, for: indexPath) as? IconButtonListViewCell else {
            return UICollectionViewCell()
            
        }
        let data = list[indexPath.row]
        cell.configure(data: data)
        return cell
    }
}

extension IconButtonListView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectItemAt(indexPath: indexPath)
    }
}
