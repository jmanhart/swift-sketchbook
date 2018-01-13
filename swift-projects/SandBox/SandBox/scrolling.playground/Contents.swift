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
    
    override func loadView() {

        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        scrollView.flashScrollIndicators()
        scrollView.backgroundColor = .brown
        
        let view = UIView()
        view.backgroundColor = .gray
        

        scrollView.contentSize = CGSize(width: screenWidth, height: 5000)
        
    
        scrollView.addSubview(labelTwo)
        view.addSubview(scrollView)
        
        labelTwo.mas_makeConstraints { (make) in
            _ = make?.left.equalTo()(view.mas_left)?.offset()(20)
            _ = make?.right.equalTo()(view.mas_right)?.offset()(-20)
//            _ = make?.top.equalTo()(view.mas_top)?.offset()(20)
        }
        

        
        /*
        labelTwo.mas_makeConstraints { (make) in
            _ = make?.left.equalTo()(scrollView.mas_left)?.offset()(20)
            _ = make?.right.equalTo()(scrollView.mas_right)?.offset()(-20)
            _ = make?.centerY.equalTo()(scrollView.mas_centerY)
            _ = make?.top.equalTo()(scrollView.mas_top)?.offset()(40)
        }
        */
        
        
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


