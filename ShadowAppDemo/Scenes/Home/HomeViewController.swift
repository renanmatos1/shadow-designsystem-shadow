import UIKit

class HomeViewController: UIViewController {

    // MARK: - UI
    private let contentView: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .tertiarySystemGroupedBackground
        view.text = "ContentView"
        view.textAlignment = .center

        return view
    }()

    // MARK: - Properties

    // MARK: - Init
    public init() {
        super.init(nibName: nil, bundle: nil)
        buildHierarchy()
        setupConstraints()
        applyAdditionalChanges()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func buildHierarchy() {
        view.addSubview(contentView)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20.0),
            contentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20.0)
        ])
    }

    private func applyAdditionalChanges() {
        view.backgroundColor = .systemBackground
        navigationItem.title = "Home"
        navigationItem.largeTitleDisplayMode = .always
    }
}
