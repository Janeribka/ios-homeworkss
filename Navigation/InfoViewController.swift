//
//  InfoViewController.swift
//  Navigation
//
//  Created by Евгения Евтеева on 23.03.2022.
//

import UIKit

class InfoViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.view.addSubview(self.button)
        self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    private lazy var button: UIButton = {
          let button = UIButton()
        button.backgroundColor = .orange
          button.layer.cornerRadius = 10
          button.setTitle("Удалить пост", for: .normal)
          button.setTitleColor(.blue, for: .normal)
          button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
          button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
          button.translatesAutoresizingMaskIntoConstraints = false
          return button
      }()
    @objc private func buttonAction() {
        let alertController = UIAlertController(title: "Удаление поста", message: " Хотите удалить пост?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler:{ _ in
            print("cancel")
        })
        alertController.addAction(cancelAction)
        let deleteAction = UIAlertAction(title: "Удалить", style: .destructive, handler: { _ in
            print("delete")
        })
        alertController.addAction(deleteAction)
        present(alertController, animated: true, completion: nil)
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
