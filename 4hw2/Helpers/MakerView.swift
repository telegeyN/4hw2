//
//  MakerView.swift
//  4hw2
//
//  Created by Telegey Nurbekova on 16/02/24.
//

import UIKit

class MakerView {
    
    func makerLabel(text: String = "",
                    size: CGFloat = 12,
                    weight: UIFont.Weight = .regular,
                    textColor: UIColor = .init(hex: "A5A5A5"),
                    backgroundColor: UIColor = .clear,
                    textAlignment: NSTextAlignment = .left,
                    numberOfLines: Int = 0,
                    lineBreakMode:NSLineBreakMode = .byWordWrapping,
                    translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return label
    }
    
    
    func makerTextField(placeholder: String = "",
                    cornerRadius: CGFloat = 12,
                    textColor: UIColor = .black,
                    backgroundColor: UIColor = .clear,
                    borderColor: UIColor = .lightGray,
                    borderWidth: CGFloat = 1,
                    translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.layer.cornerRadius = cornerRadius
        tf.backgroundColor = backgroundColor
        tf.layer.borderColor = borderColor.cgColor
        tf.layer.borderWidth = borderWidth
        tf.textColor = textColor
        tf.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
        
    }
    
    func makerButton(backgroundColor: UIColor = .clear,
                     title: String = "",
                     color: UIColor = .white,
                     cornerRadius: CGFloat = 15,
                     borderWidth: CGFloat = 0,
                     borderColor: UIColor = .gray,
                     translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIButton {
        let button = UIButton()
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.layer.cornerRadius = cornerRadius
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor
        button.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return button
    }
    
    func makerImage(imageName: String = "",
                    translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: imageName)
        image.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return image
    }
}
