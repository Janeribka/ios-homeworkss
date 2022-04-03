//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Евгения Евтеева on 22.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileHeaderView = ProfileHeaderView()
    let  profileHeader: UIView = {
       let view1 = ProfileHeaderView()
       return view1
    }()
    override func viewWillLayoutSubviews(){
        self.profileHeader.frame = view.frame
    }
    func addSubviews() {
        self.view.addSubview(profileHeaderView.avatarProfile)
        self.view.addSubview(profileHeaderView.nameProfile)
        self.view.addSubview(profileHeaderView.statusProfile)
        self.view.addSubview(profileHeaderView.bottomShowStatusProfile)
        self.view.addSubview(profileHeader)
    }
    override func viewDidLoad() {
      super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.addSubviews ()
    }
}

