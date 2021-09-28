//
//  CustomTabBar.swift
//  TabBar
//
//  Created by moumen isawe on 28/09/2021.
//

import UIKit
class CustomTabBarController: UITabBarController {
    
    let button = UIButton.init(type: .custom)
    let buttonBackground = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
 
        button.setImage(UIImage(systemName: "plus")!, for: .normal)
        button.tintColor = .white
        button.backgroundColor = .orange
        

        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.insertSubview(button, aboveSubview: self.tabBar)
        self.view.insertSubview(buttonBackground, aboveSubview: self.tabBar)

      
    }
    @objc func buttonAction(sender: UIButton!) {
        selectedIndex = 2
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // safe place to set the frame of button manually
        
        
        buttonBackground.frame =  CGRect.init(x: self.tabBar.center.x - 32, y: self.view.bounds.height - 74, width: self.view.bounds.width*0.1527, height: self.view.bounds.width*0.1527)
        buttonBackground.backgroundColor =   UIColor.white.withAlphaComponent(0.1)
        button.frame = CGRect.init(x: self.buttonBackground.center.x - 32, y: self.view.bounds.height - 74, width: self.view.bounds.width*0.1227, height: self.view.bounds.width*0.1227)
        button.center  = CGPoint(x: buttonBackground.center.x, y: buttonBackground.center.y)

        button.layer.cornerRadius = button.bounds.width/2
        buttonBackground.layer.cornerRadius = buttonBackground.bounds.width/2

//        button.layer.borderWidth = 4
        
//        button.layer.borderColor = .cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
