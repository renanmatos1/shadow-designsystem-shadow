import UIKit

extension UIImage {
    
    class var pixIcon: UIImage {
        return UIImage(named: "pix_icon") ?? UIImage()
    }
    
    class var barIcon: UIImage {
        return UIImage(named: "barCode_icon") ?? UIImage()
    }
    
    class var myCardIcon: UIImage {
        return UIImage(named: "mycard_icon") ?? UIImage()
    }
}
