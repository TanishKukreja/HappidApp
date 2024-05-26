//
//  LoginViewController.swift
//  Happid
//
//  Created by Tanish Kukreja on 24/05/24.
//

import Foundation
import UIKit


class LoginViewController : UIViewController{
    
    var bottomBoxView = UIView()
    var upperBoxView = UIView()
    var upperBoxBigLabel = UILabel()
    var upperBoxSmallLabel = UILabel()
    var bottomInnerBoxView = UIView()
    var lowerlabel = UILabel()
    var indiaMobileNumberView = UIView()
    var requestOtpButton = UIButton()
    var loginWithView = UIView()
    var facebookGoogleLogoStackView = UIStackView()
    var googleView = UIView()
    var facebookView = UIView()
    
    var googleLogoImage = UIImageView()
    var facebookLogoImage = UIImageView()
    var googleLabel = UILabel()
    var facebookLabel = UILabel()
    
    var indiaFlagImageLabelView = UIView()
    
    var indiaNumberFlagImage = UIImageView()
    var indiaCodeLabel = UILabel()
    var mobileNumberTextField = UITextField()
    
    var straightLineView = UIView()
    var straightLineView2 = UIView()

    var loginWithLabel = UILabel()
    override func viewDidLoad() {
    
        view.translatesAutoresizingMaskIntoConstraints = false
        bottomBoxView.translatesAutoresizingMaskIntoConstraints = false
        upperBoxView.translatesAutoresizingMaskIntoConstraints = false
        upperBoxBigLabel.translatesAutoresizingMaskIntoConstraints = false
        upperBoxSmallLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomInnerBoxView.translatesAutoresizingMaskIntoConstraints = false
        lowerlabel.translatesAutoresizingMaskIntoConstraints = false
        indiaMobileNumberView.translatesAutoresizingMaskIntoConstraints = false
        requestOtpButton.translatesAutoresizingMaskIntoConstraints = false
        loginWithView.translatesAutoresizingMaskIntoConstraints = false
        facebookGoogleLogoStackView.translatesAutoresizingMaskIntoConstraints = false
        
        googleView.translatesAutoresizingMaskIntoConstraints = false
        facebookView.translatesAutoresizingMaskIntoConstraints = false
        
        googleLogoImage.translatesAutoresizingMaskIntoConstraints = false
        facebookLogoImage.translatesAutoresizingMaskIntoConstraints = false
        
        googleLabel.translatesAutoresizingMaskIntoConstraints = false
        facebookLabel.translatesAutoresizingMaskIntoConstraints = false
        
        indiaFlagImageLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        indiaNumberFlagImage.translatesAutoresizingMaskIntoConstraints = false
        indiaCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mobileNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        straightLineView.translatesAutoresizingMaskIntoConstraints = false
        straightLineView2.translatesAutoresizingMaskIntoConstraints = false
        
        loginWithLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .white
//        bottomBoxView.backgroundColor = .red
        
//        indiaMobileNumberView.backgroundColor = .green
        requestOtpButton.backgroundColor = UIColor(named: "buttonColor")

        view.addSubview(bottomBoxView)
        view.addSubview(upperBoxView)
        
        upperBoxView.addSubview(upperBoxBigLabel)
        upperBoxView.addSubview(upperBoxSmallLabel)
        
        bottomBoxView.addSubview(bottomInnerBoxView)
        bottomBoxView.addSubview(lowerlabel)
        
        bottomInnerBoxView.addSubview(indiaMobileNumberView)
        bottomInnerBoxView.addSubview(requestOtpButton)
        bottomInnerBoxView.addSubview(loginWithView)
        bottomBoxView.addSubview(facebookGoogleLogoStackView)
        
        facebookGoogleLogoStackView.addArrangedSubview(googleView)
        facebookGoogleLogoStackView.addArrangedSubview(facebookView)
        
        googleView.addSubview(googleLogoImage)
        googleView.addSubview(googleLabel)
        
        facebookView.addSubview(facebookLogoImage)
        facebookView.addSubview(facebookLabel)
        
        indiaMobileNumberView.addSubview(indiaFlagImageLabelView)
        
        indiaFlagImageLabelView.addSubview(indiaCodeLabel)
        indiaFlagImageLabelView.addSubview(indiaNumberFlagImage)
        
        indiaMobileNumberView.addSubview(mobileNumberTextField)
        
        loginWithView.addSubview(straightLineView)
        loginWithView.addSubview(straightLineView2)
        loginWithView.addSubview(loginWithLabel)
        
        NSLayoutConstraint.activate([
            bottomBoxView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBoxView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomBoxView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomBoxView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            
            upperBoxView.topAnchor.constraint(equalTo: view.topAnchor),
            upperBoxView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            upperBoxView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            upperBoxView.bottomAnchor.constraint(equalTo: bottomBoxView.topAnchor),
            
            upperBoxBigLabel.leadingAnchor.constraint(equalTo: upperBoxView.leadingAnchor,constant: 20),
            upperBoxBigLabel.trailingAnchor.constraint(equalTo: upperBoxView.trailingAnchor,constant: -20),
            upperBoxBigLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 130),
            
            upperBoxSmallLabel.leadingAnchor.constraint(equalTo: upperBoxView.leadingAnchor,constant: 20),
            upperBoxSmallLabel.trailingAnchor.constraint(equalTo: upperBoxView.trailingAnchor,constant: -20),
            upperBoxSmallLabel.topAnchor.constraint(equalTo: upperBoxBigLabel.bottomAnchor,constant: 10),
            
            bottomInnerBoxView.topAnchor.constraint(equalTo: bottomBoxView.topAnchor,constant: 30),
            bottomInnerBoxView.leadingAnchor.constraint(equalTo: bottomBoxView.leadingAnchor,constant: 20),
            bottomInnerBoxView.trailingAnchor.constraint(equalTo: bottomBoxView.trailingAnchor,constant: -20),
            bottomInnerBoxView.bottomAnchor.constraint(equalTo: bottomBoxView.bottomAnchor,constant: -120),
            
            lowerlabel.bottomAnchor.constraint(equalTo: bottomBoxView.bottomAnchor, constant: -30),
            lowerlabel.leadingAnchor.constraint(equalTo: bottomBoxView.leadingAnchor,constant: 20),
            lowerlabel.trailingAnchor.constraint(equalTo: bottomBoxView.trailingAnchor, constant: -20),
            lowerlabel.topAnchor.constraint(equalTo: bottomInnerBoxView.bottomAnchor, constant: 30),
            
            indiaMobileNumberView.leadingAnchor.constraint(equalTo: bottomInnerBoxView.leadingAnchor),
            indiaMobileNumberView.trailingAnchor.constraint(equalTo: bottomInnerBoxView.trailingAnchor),
            indiaMobileNumberView.topAnchor.constraint(equalTo: bottomInnerBoxView.topAnchor),
            indiaMobileNumberView.heightAnchor.constraint(equalToConstant: 60),
            
            requestOtpButton.topAnchor.constraint(equalTo: indiaMobileNumberView.bottomAnchor, constant: 20),
            requestOtpButton.leadingAnchor.constraint(equalTo: indiaMobileNumberView.leadingAnchor),
            requestOtpButton.trailingAnchor.constraint(equalTo: indiaMobileNumberView.trailingAnchor),
            requestOtpButton.heightAnchor.constraint(equalToConstant: 60),
            
            loginWithView.topAnchor.constraint(equalTo: requestOtpButton.bottomAnchor, constant: 20),
            loginWithView.leadingAnchor.constraint(equalTo: requestOtpButton.leadingAnchor),
            loginWithView.trailingAnchor.constraint(equalTo: requestOtpButton.trailingAnchor),
            loginWithView.heightAnchor.constraint(equalToConstant: 60),
            
            facebookGoogleLogoStackView.topAnchor.constraint(equalTo: loginWithView.bottomAnchor, constant: 20),
            facebookGoogleLogoStackView.leadingAnchor.constraint(equalTo: loginWithView.leadingAnchor),
            facebookGoogleLogoStackView.trailingAnchor.constraint(equalTo: loginWithView.trailingAnchor),
            facebookGoogleLogoStackView.heightAnchor.constraint(equalToConstant: 60),
            
            googleLogoImage.leadingAnchor.constraint(equalTo: googleView.leadingAnchor,constant: 50),
            googleLogoImage.topAnchor.constraint(equalTo: googleView.topAnchor,constant: 15),
            googleLogoImage.bottomAnchor.constraint(equalTo: googleView.bottomAnchor,constant: -15),
            googleLogoImage.widthAnchor.constraint(equalToConstant: 30),
            
            googleLabel.leadingAnchor.constraint(equalTo: googleLogoImage.trailingAnchor,constant: 5),
            googleLabel.topAnchor.constraint(equalTo: facebookView.topAnchor,constant: 5),
            googleLabel.bottomAnchor.constraint(equalTo: facebookView.bottomAnchor,constant: -5),
            googleLabel.trailingAnchor.constraint(equalTo: googleView.trailingAnchor),
            
            facebookLogoImage.leadingAnchor.constraint(equalTo: facebookView.leadingAnchor,constant: 15),
            facebookLogoImage.topAnchor.constraint(equalTo: facebookView.topAnchor,constant: 15),
            facebookLogoImage.bottomAnchor.constraint(equalTo: facebookView.bottomAnchor,constant: -15),
            facebookLogoImage.widthAnchor.constraint(equalToConstant: 30),
            
            facebookLabel.leadingAnchor.constraint(equalTo: facebookLogoImage.trailingAnchor,constant: 5),
            facebookLabel.topAnchor.constraint(equalTo: facebookView.topAnchor),
            facebookLabel.bottomAnchor.constraint(equalTo: facebookView.bottomAnchor),
            facebookLabel.trailingAnchor.constraint(equalTo: facebookView.trailingAnchor),
            
            indiaFlagImageLabelView.leadingAnchor.constraint(equalTo: indiaMobileNumberView.leadingAnchor),
            indiaFlagImageLabelView.topAnchor.constraint(equalTo: indiaMobileNumberView.topAnchor),
            indiaFlagImageLabelView.bottomAnchor.constraint(equalTo: indiaMobileNumberView.bottomAnchor),
            indiaFlagImageLabelView.widthAnchor.constraint(equalToConstant: 80),
            
            indiaNumberFlagImage.leadingAnchor.constraint(equalTo: indiaFlagImageLabelView.leadingAnchor),
            indiaNumberFlagImage.topAnchor.constraint(equalTo: indiaFlagImageLabelView.topAnchor,constant: 15),
            indiaNumberFlagImage.bottomAnchor.constraint(equalTo: indiaFlagImageLabelView.bottomAnchor,constant: -15),
            indiaNumberFlagImage.widthAnchor.constraint(equalToConstant: 30),
            
            indiaCodeLabel.leadingAnchor.constraint(equalTo: indiaNumberFlagImage.trailingAnchor,constant: 5),
            indiaCodeLabel.topAnchor.constraint(equalTo: indiaFlagImageLabelView.topAnchor),
            indiaCodeLabel.bottomAnchor.constraint(equalTo: indiaFlagImageLabelView.bottomAnchor),
            indiaCodeLabel.widthAnchor.constraint(equalToConstant: 40),
            
            mobileNumberTextField.leadingAnchor.constraint(equalTo: indiaCodeLabel.trailingAnchor,constant: 10),
            mobileNumberTextField.trailingAnchor.constraint(equalTo: indiaMobileNumberView.trailingAnchor),
            mobileNumberTextField.bottomAnchor.constraint(equalTo: indiaMobileNumberView.bottomAnchor),
            mobileNumberTextField.topAnchor.constraint(equalTo: indiaMobileNumberView.topAnchor),
            
            straightLineView.centerYAnchor.constraint(equalTo: loginWithView.centerYAnchor),
            straightLineView.leadingAnchor.constraint(equalTo: loginWithView.leadingAnchor,constant: 10),

            straightLineView.widthAnchor.constraint(equalToConstant: 115),
            straightLineView.heightAnchor.constraint(equalToConstant: 2),
           
            straightLineView2.centerYAnchor.constraint(equalTo: loginWithView.centerYAnchor),
            straightLineView2.leadingAnchor.constraint(equalTo: loginWithLabel.trailingAnchor,constant: 10),

            straightLineView2.widthAnchor.constraint(equalToConstant: 115),
            straightLineView2.heightAnchor.constraint(equalToConstant: 2),
            
            loginWithLabel.leadingAnchor.constraint(equalTo: straightLineView.trailingAnchor,constant: 10),
//            loginWithLabeld.trailingAnchor.constraint(equalTo: indiaMobileNumberView.trailingAnchor),
            loginWithLabel.centerYAnchor.constraint(equalTo: loginWithView.centerYAnchor),
            

            
        ])
        
        upperBoxBigLabel.text = "Enter Your Mobile  Number"
        upperBoxBigLabel.font = UIFont.boldSystemFont(ofSize: 34)
        upperBoxBigLabel.textAlignment = .left
        upperBoxBigLabel.lineBreakMode = .byWordWrapping
        upperBoxBigLabel.numberOfLines = 2
        
        upperBoxSmallLabel.text = "Hello Welcome Back To Our Account"
        upperBoxSmallLabel.font = UIFont(name: "Montserrat", size: 16)
        upperBoxSmallLabel.textAlignment = .left
        
//        bottomInnerBoxView.backgroundColor = .yellow
        
        lowerlabel.text = "By creating passcode you agree with our Terms & Conditions and Privacy Policy"
        lowerlabel.font = UIFont(name: "Montserrat", size: 14)
        lowerlabel.numberOfLines = 2
        lowerlabel.textAlignment = .center
        
        requestOtpButton.setTitle("Request OTP", for: .normal)
        requestOtpButton.layer.cornerRadius = 5
        

        
//        facebookGoogleLogoStackView.backgroundColor = .green
        facebookGoogleLogoStackView.axis = .horizontal
        facebookGoogleLogoStackView.distribution = .fillEqually
        facebookGoogleLogoStackView.spacing = 10

//        googleView.backgroundColor = .cyan
//        facebookView.backgroundColor = .cyan
        

//        googleLogoImage.backgroundColor = .black
        googleLogoImage.image = UIImage(named: "Mask Group-2")
        
//        googleLabel.backgroundColor = .white
        googleLabel.text = "Google"
        googleLabel.font = UIFont(name: "Montserrat", size: 14)
        googleLabel.textAlignment = .left
        
//        facebookLogoImage.backgroundColor = .magenta
//        facebookLabel.backgroundColor = .purple
        
        facebookLogoImage.image = UIImage(named: "image 6")
        facebookLabel.font = UIFont(name: "Montserrat", size: 14)
        facebookLabel.textAlignment = .left
        facebookLabel.text = "Facebook"
        
//        indiaFlagImageLabelView.backgroundColor = .purple
        
        indiaCodeLabel.text = "+91"
//        indiaCodeLabel.backgroundColor = .white
        indiaCodeLabel.font = UIFont(name: "Montserrat", size: 14)
        

 
//        indiaNumberFlagImage.backgroundColor = .black
        indiaNumberFlagImage.image = UIImage(named: "Image")
        
        mobileNumberTextField.placeholder = "00000 00000"
        
        straightLineView.backgroundColor = .lightGray
        
        straightLineView2.backgroundColor = .lightGray
        
        loginWithLabel.text = "Login With"
        loginWithLabel.font = UIFont(name: "Montserrat", size: 14)

        requestOtpButton.addTarget(self, action: #selector(requestButtontapped), for: .touchUpInside)

    }
    
    @objc func requestButtontapped(){
        
        let createButtonTapped = CreateProfileViewController()
        present(createButtonTapped, animated: true, completion: nil)

        print("Button Tapped")
        
        
    }
    
    
}
