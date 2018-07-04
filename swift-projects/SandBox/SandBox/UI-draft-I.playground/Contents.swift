//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Masonry

class MyViewController : UIViewController {
    
    let cardView = UIView()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .gray
        
        // CardView Styling
        cardView.frame = CGRect(x: 100, y:100, width: 100, height: 100)
        cardView.backgroundColor = .white
        
        // Adding Subviews
        view.addSubview(cardView)
        
        
        self.view = view
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()



