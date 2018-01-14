//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Masonry

class MyViewController : UIViewController {
    
    
    let labelTwo: UILabel = {
        let label = UILabel()
        label.text = "Scroll Bottom"
        label.backgroundColor = .green
        return label
    }()
    
    let cardOne: UIView = {
        let cardSize = CGRect(x: 0, y: 0, width: 100, height: 100)
        let card = UIView(frame:cardSize)
        card.backgroundColor = .white
        return card
    }()
    
    override func loadView() {
        
        /*
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        */

        

        
        let view = UIView()
        view.backgroundColor = .gray
        
        

        

        
        
        

        view.addSubview(cardOne)
        
        
        cardOne.mas_makeConstraints { (make) in
            _ = make?.left.equalTo()(view.mas_left)?.offset()(20)
            _ = make?.right.equalTo()(view.mas_right)?.offset()(-20)
            _ = make?.centerY.equalTo()(view.mas_centerY)
        }
        
        
        
        self.view = view
        
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()









/*
 let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 5000, height: 5000))
 contentView.backgroundColor = .green
 
 let scrollView = UIScrollView()
 scrollView.contentSize = contentView.frame.size
 scrollView.addSubview(contentView)
 scrollView.flashScrollIndicators()
 scrollView.backgroundColor = .white
 
 self.view = scrollView
 
 
 NSLayoutConstraint(item: labelTwo, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 10)
 NSLayoutConstraint(item: labelTwo, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
 NSLayoutConstraint(item: labelTwo, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 10)
 NSLayoutConstraint(item: labelTwo, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30)
 
 
 labelTwo.mas_makeConstraints { (make) in
 _ = make?.left.equalTo()(view.mas_left)?.offset()(20)
 _ = make?.right.equalTo()(view.mas_right)?.offset()(-20)
 _ = make?.centerY.equalTo()(view.mas_centerY)
 _ = make?.top.equalTo()(view.mas_top)?.offset()(40)
 }
 
 */




