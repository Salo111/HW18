//
//  ViewController.swift
//  hw18
//
//  Created by salo khizanishvili on 20.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addImage()
        addLabel()
        addBottomBtn()
        addButton()
        addSTextField()
        addFTextField()
        addSmallImage()
    }
    
    func addImage(){
        let imageName = "colorful.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        view.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        let width = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: view.frame.width).isActive = true
        let height = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: view.frame.height).isActive = true
        
    }
    
    let myLabel = UILabel()
    
    func addLabel(){
        
        view.addSubview(myLabel)
        myLabel.text = "Welcome To Fight Club"
        myLabel.textAlignment = .center
        myLabel.textColor = .black
        myLabel.font = UIFont.systemFont(ofSize: 27.0)
        myLabel.translatesAutoresizingMaskIntoConstraints = false
      
        
        let left = NSLayoutConstraint(item: myLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0).isActive = true
        let right = NSLayoutConstraint(item: myLabel, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0).isActive = true
        let top = NSLayoutConstraint(item: myLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 60).isActive = true
        
    }
    
    let bottomButton = UIButton()
    
    func addBottomBtn(){
        view.addSubview(bottomButton)
        bottomButton.setTitle("Sign up, but remember rule number one, shh!", for: .normal)
        bottomButton.setTitleColor(.black, for: .normal)
        bottomButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
      
        
        let left = NSLayoutConstraint(item: bottomButton, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0).isActive = true
        let right = NSLayoutConstraint(item: bottomButton, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0).isActive = true
        let bottom = NSLayoutConstraint(item: bottomButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -30).isActive = true
        
    }
    
    let myButton = UIButton()
    
    func addButton(){
        view.addSubview(myButton)
        myButton.backgroundColor = .cyan
        myButton.setTitleColor(.systemPink, for: .normal)
        myButton.layer.cornerRadius = 20
        myButton.setTitle("Log in", for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        
        let left = NSLayoutConstraint(item: myButton, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 70).isActive = true
        let right = NSLayoutConstraint(item: myButton, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -70).isActive = true
        let bottom = NSLayoutConstraint(item: myButton, attribute: .bottom, relatedBy: .equal, toItem: bottomButton, attribute: .top, multiplier: 1, constant: -50).isActive = true
       
        
    }
    
    var firstTextField = UITextField()
    var secondTextField = UITextField()
    
    func addFTextField(){
        view.addSubview(firstTextField)
        firstTextField.placeholder = "Email"
        firstTextField.textAlignment = .center
        firstTextField.backgroundColor = .white
        firstTextField.layer.cornerRadius = 10
        firstTextField.font = UIFont.systemFont(ofSize: 20.0)
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let left = NSLayoutConstraint(item: firstTextField, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 45).isActive = true
        let right = NSLayoutConstraint(item: firstTextField, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -45).isActive = true
        let bottom = NSLayoutConstraint(item: firstTextField, attribute: .bottom, relatedBy: .equal, toItem: secondTextField, attribute: .top, multiplier: 1, constant: -10).isActive = true
    }
    
    func addSTextField(){
        
        view.addSubview(secondTextField)
        secondTextField.placeholder = "Password"
        secondTextField.textAlignment = .center
        secondTextField.backgroundColor = .white
        secondTextField.layer.cornerRadius = 10
        secondTextField.font = UIFont.systemFont(ofSize: 20.0)
        secondTextField.translatesAutoresizingMaskIntoConstraints = false
        let left = NSLayoutConstraint(item: secondTextField, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 45).isActive = true
        let right = NSLayoutConstraint(item: secondTextField, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -45).isActive = true
        let bottom = NSLayoutConstraint(item: secondTextField, attribute: .bottom, relatedBy: .equal, toItem: myButton, attribute: .top, multiplier: 1, constant: -view.frame.height/12).isActive = true
    }
    
    func addSmallImage(){
        let imageName = "brdpt.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        view.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        
      
        let width = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: view.frame.height/3.1).isActive = true
        let height = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: view.frame.height/3.1).isActive = true
        let top = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: myLabel, attribute: .bottom, multiplier: 1, constant: view.frame.height/23).isActive = true
        
        let right = NSLayoutConstraint(item: imageView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -65).isActive = true
        
        
    }
    
   
    


}

