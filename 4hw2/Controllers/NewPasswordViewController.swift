//
//  NewPasswordViewController.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class NewPasswordViewController: UIViewController {
    
    private let lockImage = MakerView().makerImage(imageName: "lock")
    
    private let codeTextField = MakerView().makerTextField(placeholder: " erp001",
                                                           textColor: .lightGray,
                                                           backgroundColor: .init(hex: "#787878"))
    
    private let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "#FFFFFF")
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let passwordLabel = MakerView().makerLabel(text: "New Password")
    
    private let passwordTextField = MakerView().makerTextField()
    
    private var showPasswordButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "eye_open"), for: .normal)
        view.setImage(UIImage(named: "eye_closed"), for: .selected)
        view.alpha = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let confirmLabel = MakerView().makerLabel(text: "Confirm Password")
    
    private let confirmTextField = MakerView().makerTextField()
    
    private var showConfirmButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "eye_open"), for: .normal)
        view.setImage(UIImage(named: "eye_closed"), for: .selected)
        view.alpha = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        codeTextField.isEnabled = false
    }
    
    private let submitButton = MakerView().makerButton(backgroundColor: .init(hex: "#4AB07E"), title: "Submit", cornerRadius: 18)
    
    private func setUpUI(){
        
        view.backgroundColor = UIColor(red: 33/255, green: 160/255, blue: 185/255, alpha: 1.0)
        
        //lock image
        view.addSubview(lockImage)
        NSLayoutConstraint.activate(
            [lockImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
             lockImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             lockImage.heightAnchor.constraint(equalToConstant: 148),
             lockImage.widthAnchor.constraint(equalToConstant: 148)
            ])
        
        //code tf
        view.addSubview(codeTextField)
        NSLayoutConstraint.activate(
            [codeTextField.topAnchor.constraint(equalTo: lockImage.bottomAnchor, constant: 24),
             codeTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             codeTextField.heightAnchor.constraint(equalToConstant: 45),
             codeTextField.widthAnchor.constraint(equalToConstant: 279)
            ])
        
        //top view
        view.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: codeTextField.bottomAnchor, constant: 35),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
        //password label
        
        topView.addSubview(passwordLabel)
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 50),
            passwordLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //password textfield
        
        topView.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            passwordTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            passwordTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        // showPasswordButton
        topView.addSubview(showPasswordButton)
        NSLayoutConstraint.activate([
            showPasswordButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            showPasswordButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -18),
            showPasswordButton.widthAnchor.constraint(equalToConstant: 25),
            showPasswordButton.heightAnchor.constraint(equalToConstant: 25)
        ])
        showPasswordButton.addTarget(self, action: #selector(showPasswordTapped), for: .touchUpInside)
        
        //confirm label
        
        topView.addSubview(confirmLabel)
        NSLayoutConstraint.activate([
            confirmLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
            confirmLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //confirm textfield
        
        topView.addSubview(confirmTextField)
        NSLayoutConstraint.activate([
            confirmTextField.topAnchor.constraint(equalTo: confirmLabel.bottomAnchor, constant: 5),
            confirmTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            confirmTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            confirmTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        // showConfirmButton
        topView.addSubview(showConfirmButton)
        NSLayoutConstraint.activate([
            showConfirmButton.centerYAnchor.constraint(equalTo: confirmTextField.centerYAnchor),
            showConfirmButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -18),
            showConfirmButton.widthAnchor.constraint(equalToConstant: 25),
            showConfirmButton.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        // submit button
        
        topView.addSubview(submitButton)
        NSLayoutConstraint.activate(
            [submitButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -55),
             submitButton.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
             submitButton.widthAnchor.constraint(equalToConstant: 100),
             submitButton.heightAnchor.constraint(equalToConstant: 40)
             
            ])
        
        submitButton.addTarget(self, action: #selector(submitButtonTapped(_:)), for: .touchUpInside)
    }
        
    @objc private func showPasswordTapped() {
        passwordTextField.isSecureTextEntry.toggle()
        showPasswordButton.isSelected.toggle()
    }
    
    @objc private func showConfirmTapped() {
        confirmTextField.isSecureTextEntry.toggle()
        showConfirmButton.isSelected.toggle()
    }
    
    @objc private func submitButtonTapped(_ sender: UIButton) {
        
        if passwordValueValidate(textField: passwordTextField, label: passwordLabel, error: "Please insert a New Password!") == true && check() == true {
            
//            let vc = SignInViewController()
            navigationController?.popToRootViewController(animated: true)
        }
        
    }
    
    private func passwordValueValidate(textField: UITextField, label: UILabel, error: String) -> Bool {
        if textField.text?.isEmpty ?? true {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            label.text = "New Password"
            label.textColor = .gray
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
    }
    
    private func check() -> Bool {
        
        if passwordTextField.text != confirmTextField.text {
            confirmLabel.text = "Passwords do not match!"
            confirmLabel.textColor = .red
            confirmTextField.layer.borderWidth = 1
            confirmTextField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            confirmLabel.text = "Confirm Password"
            confirmLabel.textColor = .gray
            confirmTextField.layer.borderWidth = 1
            confirmTextField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
        
    }
}
