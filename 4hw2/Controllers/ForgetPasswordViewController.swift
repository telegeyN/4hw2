//
//  ForgetPasswordViewController.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
    
    private let lockImage = MakerView().makerImage(imageName: "lock")
    
    private let codeTextField = MakerView().makerTextField(placeholder: " Insert the code",
                                                           textColor: .lightGray,
                                                           backgroundColor: .init(hex: "#787878"))
    
    private let troubleLabel = MakerView().makerLabel(text: "Trouble Logging in?", size: 24, weight: .bold, textColor: .white, textAlignment: .center)
    
    private let enterLabel = MakerView().makerLabel(text: "  Enter your email or  mobile number and we'll send you a OTP to get back into your account.", size: 11, textColor: .white, textAlignment: .center, numberOfLines: 2)
    
    private let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "#FFFFFF")
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let idLabel = MakerView().makerLabel(text: "Employee Id")
    
    private let idTextField = MakerView().makerTextField()
    
    private let enternNumberLabel = MakerView().makerLabel(text: "Enter your mobile number or Email id", size: 15, textColor: .black, textAlignment: .center)
    
    private let getButton = MakerView().makerButton(backgroundColor: .init(hex: "#F5D04A"),title: "Get OTP", cornerRadius: 18)
    
    private let buttonStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private let firstButton = MakerView().makerButton(title: "X", color: .black, cornerRadius: 12, borderWidth: 1)
    private let secondButton = MakerView().makerButton(title: "X", color: .black, cornerRadius: 12, borderWidth: 1)
    private let thirdButton = MakerView().makerButton(title: "X", color: .black, cornerRadius: 12, borderWidth: 1)
    private let fourthButton = MakerView().makerButton(title: "X", color: .black, cornerRadius: 12, borderWidth: 1)
    private let fifthButton = MakerView().makerButton(title: "X", color: .black, cornerRadius: 12, borderWidth: 1)
    private let sixthButton = MakerView().makerButton(title: "X", color: .black, cornerRadius: 12, borderWidth: 1)
    
    private let submitButton = MakerView().makerButton(backgroundColor: .init(hex: "#4AB07E"), title: "Submit", cornerRadius: 18)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpUI2()
        codeTextField.isEnabled = false
    }
    
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
        
        // trouble label
        view.addSubview(troubleLabel)
        NSLayoutConstraint.activate(
            [troubleLabel.topAnchor.constraint(equalTo: codeTextField.bottomAnchor, constant: 24),
             troubleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        // enter label
        view.addSubview(enterLabel)
        NSLayoutConstraint.activate(
            [enterLabel.topAnchor.constraint(equalTo: troubleLabel.bottomAnchor, constant: 5),
             enterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             enterLabel.widthAnchor.constraint(equalToConstant: 245)
            ])
        
        
    }
    
    private func setUpUI2(){
        //top view
        view.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: enterLabel.bottomAnchor, constant: 35),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        //id label
        
        topView.addSubview(idLabel)
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 30),
            idLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15)
        ])
        
        //id textfield
        
        topView.addSubview(idTextField)
        NSLayoutConstraint.activate([
            idTextField.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 5),
            idTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            idTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -15),
            idTextField.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        //number textfield
        
        topView.addSubview(enternNumberLabel)
        NSLayoutConstraint.activate([
            enternNumberLabel.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 24),
            enternNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enternNumberLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20),
            enternNumberLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20),
            enternNumberLabel.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        // get button
        
        topView.addSubview(getButton)
        NSLayoutConstraint.activate(
            [getButton.topAnchor.constraint(equalTo: enternNumberLabel.bottomAnchor, constant: 15),
             getButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20),
             getButton.widthAnchor.constraint(equalToConstant: 100),
             getButton.heightAnchor.constraint(equalToConstant: 40)
             
             
            ])
        getButton.addTarget(self, action: #selector(getOTPButtonTapped(_:)), for: .touchUpInside)
        
        // button stack view
        
        topView.addSubview(buttonStackView)
        NSLayoutConstraint.activate(
            [buttonStackView.topAnchor.constraint(equalTo: getButton.bottomAnchor, constant: 30),
             buttonStackView.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
             buttonStackView.widthAnchor.constraint(equalToConstant: 275),
             buttonStackView.heightAnchor.constraint(equalToConstant: 40)
             
            ])
        
        buttonStackView.addArrangedSubview(firstButton)
        buttonStackView.addArrangedSubview(secondButton)
        buttonStackView.addArrangedSubview(thirdButton)
        buttonStackView.addArrangedSubview(fourthButton)
        buttonStackView.addArrangedSubview(fifthButton)
        buttonStackView.addArrangedSubview(sixthButton)
        
        // submit button
        
        topView.addSubview(submitButton)
        NSLayoutConstraint.activate(
            [submitButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -45),
             submitButton.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
             submitButton.widthAnchor.constraint(equalToConstant: 100),
             submitButton.heightAnchor.constraint(equalToConstant: 40)
             
            ])
        
        submitButton.addTarget(self, action: #selector(submitButtonTapped(_:)), for: .touchUpInside)
    }
    
    
    @objc private func getOTPButtonTapped(_ sender: UIButton) {
        guard let number = idTextField.text, !number.isEmpty else {
            idTextField.layer.borderColor = UIColor.red.cgColor
            return
        }
        
        codeTextField.isEnabled = true
        idTextField.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @objc private func submitButtonTapped(_ sender: UIButton) {
        guard let code = codeTextField.text, !code.isEmpty else {
            codeTextField.layer.borderColor = UIColor.red.cgColor
            return
        }
        
        codeTextField.layer.borderColor = UIColor.lightGray.cgColor
        let vc = NewPasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
