//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Masonry

class MyViewController : UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        view.backgroundColor = .gray
        
        let box1 = UIView()
        box1.backgroundColor = .white
        
        view.addSubview(box1)
        
        box1.mas_makeConstraints { (make) in
            _ = make?.left.equalTo()(view.mas_left)?.offset()(20)
            _ = make?.right.equalTo()(view.mas_right)?.offset()(-20)
            _ = make?.height.equalTo()(200)
            _ = make?.centerY.equalTo()(view.mas_centerY)
            _ = make?.top.equalTo()(view.mas_top)?.offset()(20)
        }
        
        
        // Declaring the view
        self.view = view
        
        // Prints out the View Dims
        view.frame
        
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
