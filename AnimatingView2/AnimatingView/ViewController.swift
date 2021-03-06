//
//  ViewController.swift
//  AnimatingView
//
//  Created by Parthasarathy Gudivada on 12/2/14.
//  Copyright (c) 2014 LearnJava. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var safariImageView = UIImageView()
    lazy var safariImage = UIImage(named: "Safari")
    var startPositionXConstraint : NSLayoutConstraint?
    var startPositionYConstraint : NSLayoutConstraint?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        safariImageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(safariImageView)
        safariImageView.addConstraint(NSLayoutConstraint(item: safariImageView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100))
        safariImageView.addConstraint(NSLayoutConstraint(item: safariImageView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100))
        startPositionXConstraint = NSLayoutConstraint(item: safariImageView, attribute: .CenterX , relatedBy: .Equal, toItem: self.view, attribute: .CenterX , multiplier: 1.0, constant: 0.0)
        startPositionYConstraint = NSLayoutConstraint(item: safariImageView, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        view.addConstraint(startPositionXConstraint!)
        view.addConstraint(startPositionYConstraint!)
        safariImageView.image = safariImage
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        safariImageView.transform = CGAffineTransformIdentity
        
       UIView.animateWithDuration(5.0, animations: { [weak self]() -> Void in
            self!.safariImageView.transform = CGAffineTransformMakeScale(3.0, 3.0)
        })

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
