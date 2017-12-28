//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    // Props
    let spacer = 20
    let cardWidth = 300
    let cardHeight = 100
    let fpoColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:0.15)
    
    // Establishing Views
    let cardView = UIView()
    let heroView = UIView()
    let mainLabel = UILabel()
    let subLabel = UILabel()
    
    override func loadView() {
        // Setting Parent view
        let view = UIView()
        view.backgroundColor = .gray
        
        //Card Container
        cardView.frame = CGRect(x:spacer, y:spacer, width: cardWidth, height:300)
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 12
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        cardView.layer.masksToBounds = true
        
        // Hero Container
        heroView.frame = CGRect(x:0, y:0, width:cardWidth, height: cardHeight)
        heroView.backgroundColor = .blue
        
        // Main Label String
        mainLabel.frame = CGRect(x: spacer, y: (spacer+cardHeight), width: 200, height: 30)
        mainLabel.backgroundColor = fpoColor
        mainLabel.text = "This is a title"
        mainLabel.textColor = .black
        mainLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        
        // Sub Label String
        subLabel.frame = CGRect(x: spacer, y: ((spacer + cardHeight)), width: 200, height: 30)
        subLabel.backgroundColor = fpoColor
        subLabel.text = "This is a sub label and cool awesome yay"
        
        // Adding subviews
        view.addSubview(cardView)
        cardView.addSubview(heroView)
        cardView.addSubview(mainLabel)
        cardView.addSubview(subLabel)

        self.view = view
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
