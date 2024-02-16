//
//  ViewController.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    private let logoImage = MakerView().makerImage(imageName: "logo")
    
    
    private let welcomeLabel = MakerView().makerLabel(text: "Welcome Back", size: 34, weight: .medium, textColor: .white)
    
    private let signInLabel = MakerView().makerLabel(text: "Sign in to continue", size: 20, weight: .regular, textColor: UIColor(red: 1, green: 1, blue: 1, alpha: 0.69))
    
    private let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "#FFFFFF")
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let emailLabel = MakerView().makerLabel(text: "Employee Id / Email")
    
    private let emailTextField = MakerView().makerTextField()
    
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
    
    private let forgotPasswordButton: UIButton = {
        let view = UIButton()
        view.setTitle("Forgot Password?", for: .normal)
        view.setTitleColor(.init(hex: "#4B94EA"), for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var checkBoxButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "unchecked"), for: .normal)
        view.setImage(UIImage(named: "checked"), for: .selected)
        view.alpha = 0.8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let rememberMeLabel: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.textColor = .black
        view.alpha = 0.8
        view.font = UIFont.systemFont(ofSize: 16)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let signUpLabel = MakerView().makerLabel(text: "Don't have an account? Sign up", size: 13, textColor: .init(hex: "#4B94EA"))
    
    private var signInButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign In", for: .normal)
        view.backgroundColor = .init(hex: "#2855AE")
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
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
        
        //welcome label
        view.addSubview(welcomeLabel)
        NSLayoutConstraint.activate(
            [welcomeLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor,constant: 2),
             welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
            ])
        
        //sign in label
        view.addSubview(signInLabel)
        NSLayoutConstraint.activate(
            [signInLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5),
             signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
            ])
        
        //top view
        view.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 10),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        //email label
        
        topView.addSubview(emailLabel)
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30),
            emailLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //email textfiels
        
        topView.addSubview(emailTextField)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            emailTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setUpUI2(){
        
        //password label
        
        topView.addSubview(passwordLabel)
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //password textfiels
        
        topView.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            passwordTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
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
        
        // forgot password button
        topView.addSubview(forgotPasswordButton)
        NSLayoutConstraint.activate([
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 6),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15)
        ])
        forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordTapped), for: .touchUpInside)
        
        // checkbox button
        topView.addSubview(checkBoxButton)
        NSLayoutConstraint.activate([
            checkBoxButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 10),
            checkBoxButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            checkBoxButton.widthAnchor.constraint(equalToConstant: 25),
            checkBoxButton.heightAnchor.constraint(equalToConstant: 25)
        ])
        checkBoxButton.addTarget(self, action: #selector(checkBoxTapped), for: .touchUpInside)
        
        // remember me label
        topView.addSubview(rememberMeLabel)
        NSLayoutConstraint.activate([
            rememberMeLabel.centerYAnchor.constraint(equalTo: checkBoxButton.centerYAnchor),
            rememberMeLabel.leadingAnchor.constraint(equalTo: checkBoxButton.trailingAnchor, constant: 5)
        ])
        
        // sign in button
        
        topView.addSubview(signInButton)
        NSLayoutConstraint.activate(
            [signInButton.topAnchor.constraint(equalTo: checkBoxButton.bottomAnchor, constant: 25),
             signInButton.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
             signInButton.widthAnchor.constraint(equalToConstant: 168),
             signInButton.heightAnchor.constraint(equalToConstant: 40)
             
            ])
        
        signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        
        
        //vector image
        topView.addSubview(backgroundImage)
        NSLayoutConstraint.activate(
            [backgroundImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor),
             backgroundImage.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
             backgroundImage.trailingAnchor.constraint(equalTo: topView.trailingAnchor)
            ])
        
        // sign up label
        topView.addSubview(signUpLabel)
        NSLayoutConstraint.activate([
            signUpLabel.bottomAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 10),
            signUpLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(signUpTapped))
        signUpLabel.isUserInteractionEnabled = true
        signUpLabel.addGestureRecognizer(tapGesture)
        
    }
    
    @objc private func showPasswordTapped() {
        passwordTextField.isSecureTextEntry.toggle()
        showPasswordButton.isSelected.toggle()
    }
    
    @objc private func forgotPasswordTapped() {
        let vc = ForgetPasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @objc private func checkBoxTapped() {
        checkBoxButton.isSelected = !checkBoxButton.isSelected
    }
    
    @objc private func signUpTapped() {
        
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc private func signInTapped() {
        
        if check() {
            let vc = SuccessViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    private func check() -> Bool {
        var isValid = true
        
        
        let isEmailValid = emailValueValidate(
            textField: emailTextField,
            label: emailLabel,
            error: "Please insert your email"
        )
        
        let isPasswordValid = passwordValueValidate(
            textField: passwordTextField,
            label: passwordLabel,
            error: "Please insert your password"
        )
        
        if isEmailValid == true && isPasswordValid == true {
            isValid = true
        } else {
            isValid = false
        }
        
        return isValid
    }
    
    private func emailValueValidate(textField: UITextField, label: UILabel, error: String) -> Bool {
        if textField.text?.isEmpty ?? true {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            label.text = "Employee Id / Email"
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
    
    
}

