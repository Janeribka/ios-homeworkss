//
//  PostViewController.swift
//  Navigation
//
//  Created by Евгения Евтеева on 22.03.2022.
//

import UIKit

class PostViewController: UIViewController {
    var titlePost: String = "Пост"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = titlePost
        self.view.addSubview(self.button)
        self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    private lazy var button: UIButton = {
          let button = UIButton()
          button.backgroundColor = .blue
          button.layer.cornerRadius = 12
          button.setTitle("Редактировать пост", for: .normal)
          button.setTitleColor(.lightGray, for: .normal)
          button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
          button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
          button.translatesAutoresizingMaskIntoConstraints = false
          return button
      }()
    @objc private func buttonAction() {
            let infoViewController = InfoViewController()
            self.present(infoViewController, animated: true)
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
