//
//  CreateProfileViewController.swift
//  Happid
//
//  Created by Tanish Kukreja on 26/05/24.
//

import Foundation
import UIKit

class CreateProfileViewController : UIViewController {
    
    let profileImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(systemName: "camera") 
            imageView.tintColor = .orange
            imageView.layer.cornerRadius = 50
            imageView.layer.masksToBounds = true
            return imageView
        }()

        let firstNameTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "First Name"
            textField.borderStyle = .roundedRect
            return textField
        }()

        let lastNameTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Last Name"
            textField.borderStyle = .roundedRect
            return textField
        }()

        let phoneTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Phone"
            textField.borderStyle = .roundedRect
            textField.keyboardType = .phonePad
            return textField
        }()

        let locationButton: UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Pick Your Current Location", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .orange
            button.layer.cornerRadius = 5
            return button
        }()

        let orLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Or"
            label.textAlignment = .center
            label.textColor = .lightGray
            return label
        }()

        let postCodeTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Select Post Code Or Address"
            textField.borderStyle = .roundedRect
            return textField
        }()

        let submitButton: UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Submit", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .purple
            button.layer.cornerRadius = 5
            return button
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white

            // Add UI elements to the view
            view.addSubview(profileImageView)
            view.addSubview(firstNameTextField)
            view.addSubview(lastNameTextField)
            view.addSubview(phoneTextField)
            view.addSubview(locationButton)
            view.addSubview(orLabel)
            view.addSubview(postCodeTextField)
            view.addSubview(submitButton)

            setupConstraints()
        }

        func setupConstraints() {
            NSLayoutConstraint.activate([
                profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                profileImageView.widthAnchor.constraint(equalToConstant: 100),
                profileImageView.heightAnchor.constraint(equalToConstant: 100),

                firstNameTextField.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
                firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

                lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 15),
                lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

                phoneTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 15),
                phoneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                phoneTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

                locationButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 15),
                locationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                locationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                locationButton.heightAnchor.constraint(equalToConstant: 50),

                orLabel.topAnchor.constraint(equalTo: locationButton.bottomAnchor, constant: 10),
                orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                postCodeTextField.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 10),
                postCodeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                postCodeTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

                submitButton.topAnchor.constraint(equalTo: postCodeTextField.bottomAnchor, constant: 20),
                submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                submitButton.heightAnchor.constraint(equalToConstant: 50),
                submitButton.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
            ])
        }
    
}


