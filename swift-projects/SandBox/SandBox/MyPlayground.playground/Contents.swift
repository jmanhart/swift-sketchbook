//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Cartography

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .gray

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 200)
        label.text = "Hello World!"
        label.textColor = .black
        
        constrain(label){ label in
            label.height == 20
            
        }
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
