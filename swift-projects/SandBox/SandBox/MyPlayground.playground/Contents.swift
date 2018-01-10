//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Cartography

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .gray
        
        /*
        let boxWrapper = UIView()
        boxWrapper.frame = CGRect(x: 40, y:0, width: 300, height: 500)
        boxWrapper.backgroundColor = .red
        */
        
        let box1 = UIView()
        box1.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        box1.backgroundColor = .blue
        
        let box2 = UIView()
        box2.frame = CGRect(x: 200, y:200, width: 100, height: 100)
        box2.backgroundColor = .green
        
        /* constrain(boxWrapper) { boxWrapper in
            boxWrapper.width == boxWrapper.self.width
            boxWrapper.height == boxWrapper.self.height
            
        }*/
        
        constrain(box1, box2) { box1, box2 in
            box1.width == (box1.superview!.width - 100) * 0.5
            box2.width == box1.width - 100
            
        }

        
        
        view.addSubview(box1)
        view.addSubview(box2)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
