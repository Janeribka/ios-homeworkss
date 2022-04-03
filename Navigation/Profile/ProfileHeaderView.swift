//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Евгения Евтеева on 29.03.2022.
//

import Foundation
import UIKit
//import PureLayout


class ProfileHeaderView: UIView {
 
    var avatarProfile: UIImageView! {
    let imageView = UIImageView(image: UIImage(named: "ava-vk-animal-91"))
        imageView.frame = CGRect(
        x: 16,
        y: 66,
        width: 100,
        height: 100)
    imageView.layer.borderWidth = 3.0
    imageView.layer.borderColor = UIColor.white.cgColor
    imageView.layer.cornerRadius = 50.0
    imageView.clipsToBounds = true
    return imageView
    }
    var nameProfile: UILabel! {
      let  label1 = UILabel(frame: CGRect(
        x: 132,
        y: 27,
        width: 100,
        height: 100))
        label1.text = "Hipster Cat"
        label1.textColor = .black
        label1.textAlignment = .center
        label1.font = UIFont.boldSystemFont(ofSize: 18.0)
        return label1
    }
    var statusProfile: UILabel! {
      let  label2 = UILabel(frame: CGRect(
        x: 132,
        y: 89,
        width: 100,
        height: 100))
        label2.text = "Waiting for something..."
        label2.textColor = .gray
        label2.textAlignment = .center
        label2.font = label2.font.withSize(14)
        return label2
    }
    var bottomShowStatusProfile: UIButton!{
        let button = UIButton(frame: CGRect(x: 16, y: 182, width: 288, height: 50))
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }
    @objc private func buttonPressed() {
        print("Waiting for something...")
        }

}



