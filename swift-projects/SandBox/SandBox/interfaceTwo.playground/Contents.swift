//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Masonry

class MyViewController : UIViewController {
    
    // Viewer Default Dimensions
    let screenWidth: CGFloat = 375
    let screenHeight: CGFloat = 667
    let cardPadding: CGFloat = 10

    
    override func loadView() {
    
        let view = UIView()
        view.backgroundColor = .gray
        
        
        self.view = view
        
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


