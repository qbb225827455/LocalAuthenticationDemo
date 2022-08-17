//
//  LoginViewController.swift
//  LocalAuthenticationDemo
//
//  Created by 陳鈺翔 on 2022/8/18.
//

import UIKit

class LoginViewController: UIViewController {

    var blurEffectView: UIVisualEffectView?
    
    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBOutlet weak var loginView:UIView! {
        didSet {
            loginView.layer.cornerRadius = 30
        }
    }
    
    @IBOutlet weak var emailTextField:UITextField! {
        didSet {
            emailTextField.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var passwordTextField:UITextField! {
        didSet {
            passwordTextField.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.image = UIImage(named: "background")
        let blurEffect = UIBlurEffect(style: .dark)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView!.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView!)
        
        showLoginDialog()
    }
    
    override func viewWillLayoutSubviews() {
        blurEffectView!.frame = view.bounds
    }
    
    
    func showLoginDialog() {
        
        loginView.isHidden = false
        loginView.transform = CGAffineTransform(translationX: 0, y: -700)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            
            self.loginView.transform = CGAffineTransform.identity
            
        }, completion: nil)
        
    }
}
