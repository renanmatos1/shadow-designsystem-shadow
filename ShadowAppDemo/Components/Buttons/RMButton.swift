
import UIKit

final class RMButton: UIButton {
    enum ButtonType {
        case primary
        case secondary
        case tertiatry
    }

    var type: ButtonType = .primary {
        didSet {
            setupButton()
        }
    }

    init() { // init from code
        super.init(frame: .zero)
        setupButton()
    }

    required init?(coder: NSCoder) { // init from storyboard/xib
        super.init(coder: coder)
        setupButton()
    }

    private func setupButton() {
        setTitleColor(.white, for: .normal)

        switch type {
        case .primary:
            layer.cornerRadius = 20
            backgroundColor = .gray
            layer.borderWidth = 1
            layer.shadowRadius = 10
            alpha = 1
    
        case .secondary:
            layer.cornerRadius = 20
            backgroundColor = .gray
            layer.borderWidth = 1
            alpha = 1

        case .tertiatry:
            layer.cornerRadius = 20
            backgroundColor = .gray
            layer.borderWidth = 1
            alpha = 1
        }
    }
}
