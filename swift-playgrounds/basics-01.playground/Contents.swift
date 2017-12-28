//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let spacer = 20
    
    
    let cardView = UIView()
    let mainLabel = UILabel()
    let subLabel = UILabel()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .gray
        
        
    
        cardView.frame = CGRect(x:spacer, y:spacer, width: 300, height:300)
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 12
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        
        
        mainLabel.frame = CGRect(x: spacer, y: spacer, width: 200, height: 30)
        mainLabel.text = "This is a title"
        mainLabel.textColor = .black
        mainLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        
        subLabel.frame = CGRect(x: spacer, y: spacer*2, width: 200, height: 30)
        subLabel.text = "This is a sub label and cool awesome yay"
        
        
        
        view.addSubview(cardView)
        cardView.addSubview(mainLabel)
        cardView.addSubview(subLabel)

        self.view = view
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
