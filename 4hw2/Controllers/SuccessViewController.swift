//
//  SuccessViewController.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class SuccessViewController: UIViewController {
    
    private var logoImage = MakerView().makerImage(imageName: "success")
    
    private var successLabel = MakerView().makerLabel(text: "Success!", size: 23, weight: .bold, textColor: .white)
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    private func setUpUI(){
        
        view.backgroundColor = UIColor(red: 33/255, green: 160/255, blue: 185/255, alpha: 1.0)
        
        // logo image
        view.addSubview(logoImage)
        NSLayoutConstraint.activate(
            [logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
             logoImage.heightAnchor.constraint(equalToConstant: 183.5),
             logoImage.widthAnchor.constraint(equalToConstant: 183.5)
            ])
        
        // success label
        view.addSubview(successLabel)
        NSLayoutConstraint.activate(
            [successLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor,constant: 5),
             successLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        
        
    }
}
