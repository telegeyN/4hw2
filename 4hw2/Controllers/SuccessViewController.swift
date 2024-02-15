//
//  SuccessViewController.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class SuccessViewController: UIViewController {
    
    private var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "success")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private var successLabel: UILabel = {
        let view = UILabel()
        view.text = "Success!"
        view.font = Fonts.bold.size(23)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
