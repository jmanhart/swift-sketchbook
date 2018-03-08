//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import SandBoxUIFramework
import Masonry

class MyViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let view = UITableViewCell()
        view.backgroundColor = UIColor.green
        view.frame.size.height = 20
        view.frame.size.width = 20
 
        return view
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    
    // Viewer Default Dimensions
    let screenWidth: CGFloat = 375
    let screenHeight: CGFloat = 667
    let cardPadding: CGFloat = 20

    let cardHeight: CGFloat = 300

    

    
    override func loadView() {
    
        let view = UIView()
        view.backgroundColor = .gray
        
        
        let cardWrapper = UIView()
        cardWrapper.backgroundColor = .white

        
        let mainLabel = UILabel()
        mainLabel.text = "This is a String"
        mainLabel.frame = CGRect(x: 0, y: 0, width: 100 , height: 100)
        //mainLabel.backgroundColor = .green
        
        
    
        
        view.addSubview(cardWrapper)
        cardWrapper.addSubview(mainLabel)
        
        
        // Making Constraints
        cardWrapper.mas_makeConstraints { (make) in
            _ = make?.top.equalTo()(view.mas_top)?.offset()(self.cardPadding)
            _ = make?.right.equalTo()(view.mas_right)?.offset()(-(self.cardPadding))
            _ = make?.bottom.equalTo()(view.mas_centerY)?.offset()(-(self.cardPadding))
            _ = make?.left.equalTo()(view.mas_left)?.offset()(self.cardPadding)
        }
        
        mainLabel.mas_makeConstraints { (make) in
            _ = make?.centerY.equalTo()(cardWrapper.mas_centerY)
            _ = make?.left.equalTo()(cardWrapper.mas_left)?.offset()(20)
            _ = make?.right.equalTo()(cardWrapper.mas_right)?.offset()(-20)
            
            _ = make?.top.equalTo()(cardWrapper.mas_top)?.offset()(self.cardPadding)
            
        }
        
        
        self.view = view
        
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()









/*
 cardOne.mas_makeConstraints { (make) in
 _ = make?.left.equalTo()(view.mas_left)?.offset()(20)
 _ = make?.right.equalTo()(view.mas_right)?.offset()(-20)
 _ = make?.centerY.equalTo()(view.mas_centerY)
 }

 
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
 
  let screensize: CGRect = UIScreen.main.bounds
 
 let screensize: CGRect = UIScreen.main.bounds
 let screenWidth = screensize.width
 let screenHeight = screensize.height
 
 
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




