//
//  SplashScreenSecond.swift
//  Happid
//
//  Created by Tanish Kukreja on 23/05/24.
//

import Foundation
import UIKit

class SplashScreenSecond : UIViewController{
    
    var upperBoxView = UIView()
    var bottomBoxView = UIView()
    var upperBoxCenterImageView = UIImageView()
    var getStartedButton = UIButton()
    var bestMarkitPlacLabel = UILabel()
    var descriptionLabel = UILabel()
    
    
    override func viewDidLoad() {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        bottomBoxView.translatesAutoresizingMaskIntoConstraints = false
        upperBoxView.translatesAutoresizingMaskIntoConstraints = false
        upperBoxCenterImageView.translatesAutoresizingMaskIntoConstraints = false
        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
        bestMarkitPlacLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        

        view.backgroundColor = .white

        view.addSubview(upperBoxView)
        upperBoxView.addSubview(upperBoxCenterImageView)
        view.addSubview(bottomBoxView)
        bottomBoxView.addSubview(getStartedButton)
        bottomBoxView.addSubview(bestMarkitPlacLabel)
        bottomBoxView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            bottomBoxView.topAnchor.constraint(equalTo: view.topAnchor, constant: 411),
            bottomBoxView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBoxView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomBoxView.heightAnchor.constraint(equalToConstant: 401),
            
            upperBoxView.topAnchor.constraint(equalTo: view.topAnchor),
            upperBoxView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            upperBoxView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            upperBoxView.bottomAnchor.constraint(equalTo: bottomBoxView.topAnchor),
            
            upperBoxCenterImageView.widthAnchor.constraint(equalToConstant: 135.31),
            upperBoxCenterImageView.heightAnchor.constraint(equalToConstant: 136),
            upperBoxCenterImageView.centerXAnchor.constraint(equalTo: upperBoxView.centerXAnchor),
            upperBoxCenterImageView.centerYAnchor.constraint(equalTo: upperBoxView.centerYAnchor),
            

            getStartedButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 650),
            getStartedButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            getStartedButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            getStartedButton.heightAnchor.constraint(equalToConstant: 60),
            
            bestMarkitPlacLabel.topAnchor.constraint(equalTo: bottomBoxView.topAnchor, constant: 10),
            bestMarkitPlacLabel.leadingAnchor.constraint(equalTo: bottomBoxView.leadingAnchor, constant: 10),
            bestMarkitPlacLabel.trailingAnchor.constraint(equalTo: bottomBoxView.trailingAnchor, constant: -10),
            
            descriptionLabel.topAnchor.constraint(equalTo: bestMarkitPlacLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: bottomBoxView.leadingAnchor, constant: 15),
            descriptionLabel.trailingAnchor.constraint(equalTo: bottomBoxView.trailingAnchor, constant: -15)
            
        ])
                
        upperBoxCenterImageView.image = UIImage(named: "Group 36618")
        
        getStartedButton.setTitle("Get Started", for: .normal)
        getStartedButton.backgroundColor = UIColor(named: "buttonColor")

        getStartedButton.layer.cornerRadius = 5
        
        descriptionLabel.text = "O On-Time Departures. Pay just for your seat. No Refusal from our end. Spacious & Comfortable Seating. Female passengers safety standards. Onboard Refreshments. Cab Tracking through Maps"
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 5
        descriptionLabel.font = UIFont(name: "Inter", size: 14)
        
        bestMarkitPlacLabel.font = UIFont.boldSystemFont(ofSize: 24)
        bestMarkitPlacLabel.text = "Best Markitplac"
        bestMarkitPlacLabel.textAlignment = .center
        
        
        getStartedButton.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)

    }
    
    @objc func getStartedButtonTapped(){
        
        let loginViewScreen = LoginViewController()
        present(loginViewScreen, animated: true, completion: nil)

        print("Button Tapped")
        
        
    }
}
