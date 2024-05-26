//
//  ViewController.swift
//  Happid
//
//  Created by Tanish Kukreja on 23/05/24.
//

import UIKit

class SplashScreenFirst: UIViewController {
    
    
    var bottomLabel = UILabel()
    var imageBoxView = UIView()
    var smallImageBox = UIImageView()
    var bigCenterImageBox = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        imageBoxView.translatesAutoresizingMaskIntoConstraints = false
        smallImageBox.translatesAutoresizingMaskIntoConstraints = false
        bigCenterImageBox.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(bottomLabel)
        view.addSubview(imageBoxView)
        
        view.backgroundColor = .white
        
        imageBoxView.addSubview(smallImageBox)
        imageBoxView.addSubview(bigCenterImageBox)
        
        smallImageBox.image = UIImage(named: "Group 36619")
        bigCenterImageBox.image = UIImage(named: "Group 36618")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.presentSplashScreenSecond() 
          }

        
        
        NSLayoutConstraint.activate([
            bottomLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37.4),
            bottomLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 689.38),
            bottomLabel.widthAnchor.constraint(equalToConstant: 300.2),
            bottomLabel.heightAnchor.constraint(equalToConstant: 68),
            
            imageBoxView.topAnchor.constraint(equalTo: view.topAnchor, constant: 102.63),
            imageBoxView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21.38),
            imageBoxView.widthAnchor.constraint(equalToConstant: 308.84),
            imageBoxView.heightAnchor.constraint(equalToConstant: 413.25),
            
            smallImageBox.topAnchor.constraint(equalTo: imageBoxView.topAnchor),
            smallImageBox.bottomAnchor.constraint(equalTo: imageBoxView.bottomAnchor),
            smallImageBox.leadingAnchor.constraint(equalTo: imageBoxView.leadingAnchor),
            smallImageBox.trailingAnchor.constraint(equalTo: imageBoxView.trailingAnchor),
            
            bigCenterImageBox.widthAnchor.constraint(equalToConstant: 135.31),
            bigCenterImageBox.heightAnchor.constraint(equalToConstant: 136),
            bigCenterImageBox.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bigCenterImageBox.centerYAnchor.constraint(equalTo: imageBoxView.centerYAnchor),
        ])
       
        bottomLabel.text = "Find Nearest Local Market"
        bottomLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)

        bottomLabel.numberOfLines = 2
        bottomLabel.textColor = UIColor.black
        bottomLabel.textAlignment = .center
        bottomLabel.backgroundColor = UIColor.clear
        bottomLabel.alpha = 1.0
    }
    
    
    func presentSplashScreenSecond() {
        let splashScreenSecond = SplashScreenSecond()
        present(splashScreenSecond, animated: true, completion: nil)
    }
    
    
}
