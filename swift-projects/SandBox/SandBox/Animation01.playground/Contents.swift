//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
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
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
