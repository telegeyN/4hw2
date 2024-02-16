//
//  SignUpViewController.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let logoImage = MakerView().makerImage(imageName: "logo")
    
    private let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "#FFFFFF")
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel = MakerView().makerLabel(text: "Full Name")
    
    private let nameTextField = MakerView().makerTextField()
    
    private let numberLabel = MakerView().makerLabel(text: "Mobile Number")
    
    private let numberTextField = MakerView().makerTextField()
    
    private let emailLabel = MakerView().makerLabel(text: "Email")
    
    private let emailTextField = MakerView().makerTextField()
    
    private let usernameLabel = MakerView().makerLabel(text: "User Name")
    
    private let usernameTextField = MakerView().makerTextField()
    
    private let passwordLabel = MakerView().makerLabel(text: "Password")
    
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
    
    private let signInLabel = MakerView().makerLabel(text: "Already have an Account? Sign In",
                                                     size: 13,
                                                     textColor: .init(hex: "4B94EA"))
    
    private let signUpButton = MakerView().makerButton(backgroundColor: .init(hex: "#2855AE"), title: "Sign Up")

    private let backgroundImage = MakerView().makerImage(imageName: "vector")

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpUI2()
    }
    
    private func setUpUI(){
        
        view.backgroundColor = UIColor(red: 33/255, green: 160/255, blue: 185/255, alpha: 1.0)
        
        //logo image
        view.addSubview(logoImage)
        NSLayoutConstraint.activate(
            [logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
             logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             logoImage.heightAnchor.constraint(equalToConstant: 256),
             logoImage.widthAnchor.constraint(equalToConstant: 350)
            ])
        
        //top view
        view.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 625)
        ])
        
        //name label
        
        topView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //name textfield
        
        topView.addSubview(nameTextField)
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            nameTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            nameTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            nameTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        //number label
        
        topView.addSubview(numberLabel)
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 15),
            numberLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //number textfield
        
        topView.addSubview(numberTextField)
        NSLayoutConstraint.activate([
            numberTextField.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 5),
            numberTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            numberTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            numberTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        //email label
        
        topView.addSubview(emailLabel)
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 15),
            emailLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //email textfield
        
        topView.addSubview(emailTextField)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            emailTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            emailTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
    }

    
    private func setUpUI2(){
        
        //username label
        
        topView.addSubview(usernameLabel)
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            usernameLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //username textfield
        
        topView.addSubview(usernameTextField)
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 5),
            usernameTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            usernameTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            usernameTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        //password label
        
        topView.addSubview(passwordLabel)
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15),
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
        showConfirmButton.addTarget(self, action: #selector(showConfirmTapped), for: .touchUpInside)
        
        
        // sign up button
        
        topView.addSubview(signUpButton)
        NSLayoutConstraint.activate(
            [signUpButton.topAnchor.constraint(equalTo: confirmTextField.bottomAnchor, constant: 25),
             signUpButton.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
             signUpButton.widthAnchor.constraint(equalToConstant: 168),
             signUpButton.heightAnchor.constraint(equalToConstant: 40)
             
            ])
        
        signUpButton.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
        
        
        
        //vector image
        topView.addSubview(backgroundImage)
        NSLayoutConstraint.activate(
            [backgroundImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor),
             backgroundImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
             backgroundImage.trailingAnchor.constraint(equalTo: topView.trailingAnchor)
            ])
        
        // sign in label
        topView.addSubview(signInLabel)
        NSLayoutConstraint.activate([
            signInLabel.bottomAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 10),
            signInLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(signInTapped))
        signInLabel.isUserInteractionEnabled = true
        signInLabel.addGestureRecognizer(tapGesture)
        
    }

    
    @objc private func showPasswordTapped() {
        passwordTextField.isSecureTextEntry.toggle()
        showPasswordButton.isSelected.toggle()
    }
    
    @objc private func showConfirmTapped() {
        confirmTextField.isSecureTextEntry.toggle()
        showConfirmButton.isSelected.toggle()
    }

    @objc private func signInTapped() {
        
        let vc = SignInViewController()
    
        if let viewControllers = navigationController?.viewControllers,
           viewControllers.contains(vc) {
            navigationController?.popToViewController(vc, animated: true)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }

    
    @objc private func signUpTapped() {
        
        if check() {
            let vc = SuccessViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
private func check() -> Bool {
    var isValid = true
    
    let isNameValid = nameValueValidate(
        textField: nameTextField,
        label: nameLabel,
        error: "Please insert your Full Name"
    )
    
    let isNumberValid = numberValueValidate(
        textField: numberTextField,
        label: numberLabel,
        error: "Please insert your Mobile Number"
    )
    
    let isEmailValid = emailValueValidate(
        textField: emailTextField,
        label: emailLabel,
        error: "Please insert your Email"
    )
    
    let isUsernameValid = usernameValueValidate(
        textField: usernameTextField,
        label: usernameLabel,
        error: "Please insert your User Name"
    )
    
    let isPasswordValid = passwordValueValidate(
        textField: passwordTextField,
        label: passwordLabel,
        error: "Please insert your password"
    )
    
    if isNameValid == true && isNumberValid == true && isEmailValid == true && isUsernameValid == true && isPasswordValid == true && checkPasswords() == true {
        isValid = true
    } else {
        isValid = false
    }
    
    return isValid
}
    
    private func nameValueValidate(textField: UITextField, label: UILabel, error: String) -> Bool {
        if textField.text?.isEmpty ?? true {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            label.text = "Full Name"
            label.textColor = .gray
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
    }
    
    private func numberValueValidate(textField: UITextField, label: UILabel, error: String) -> Bool {
        if textField.text?.isEmpty ?? true {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            label.text = "Mobile Number"
            label.textColor = .gray
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
    }
    
    private func emailValueValidate(textField: UITextField, label: UILabel, error: String) -> Bool {
        if textField.text?.isEmpty ?? true {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            label.text = "Email"
            label.textColor = .gray
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
    }
    
    private func usernameValueValidate(textField: UITextField, label: UILabel, error: String) -> Bool {
        if textField.text?.isEmpty ?? true {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            label.text = "User Name"
            label.textColor = .gray
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
            return true
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
            label.text = "Password"
            label.textColor = .gray
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
    }
    
    private func checkPasswords() -> Bool {
        
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
