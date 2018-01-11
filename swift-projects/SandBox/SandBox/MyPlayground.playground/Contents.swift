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
        // cardView.frame = CGSize(width: 100, height: 100)
        cardView.backgroundColor = .white
        
        // Adding Subviews
        view.addSubview(cardView)
        
        cardView.mas_makeConstraints { (make) in
            _ = make?.left.equalTo()(view.mas_left)?.offset()(20)
            _ = make?.right.equalTo()(view.mas_right)?.offset()(-20)
            _ = make?.centerY.equalTo()(view.mas_centerY)
            _ = make?.top.equalTo()(view.mas_top)?.offset()(10)
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(cardViewTapped))
        cardView.addGestureRecognizer(tap)
        cardView.isUserInteractionEnabled = true
        
        self.view = view
    }
    
    
    @objc func cardViewTapped () {
        let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
            // self.cardView.frame = CGRect(x: 100, y:100, width: 100, height: 100)
            self.cardView.backgroundColor = .blue
        }
        animator.startAnimation()
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()










/*
 override func loadView() {
 let view = UIView()
 view.backgroundColor = .gray
 
 // CardView Styling
 cardView.frame = CGRect(x: 100, y:100, width: 100, height: 100)
 cardView.backgroundColor = .white
 
 // Adding Subviews
 view.addSubview(cardView)
 
 // Tap Event
 let tap = UITapGestureRecognizer(target: self, action: #selector(cardViewTapped))
 cardView.addGestureRecognizer(tap)
 cardView.isUserInteractionEnabled = true
 
 self.view = view
 }
 
 // End State Post Tap
 @objc func cardViewTapped () {
 let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
 self.cardView.frame = CGRect(x: 100, y:100, width: 200, height: 200)
 self.cardView.backgroundColor = .blue
 }
 
 animator.startAnimation()
 }
 */
