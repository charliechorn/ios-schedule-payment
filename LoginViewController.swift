//
//  ViewController.swift
//  Bankey
//
//  Created by Chhaly CHHORN on 17/4/23.
//

import UIKit

class LoginViewController: UIViewController {
  
  let loginView = LoginView()

  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
}

extension LoginViewController {
  private func style() {
    loginView.translatesAutoresizingMaskIntoConstraints = false
    
  }
  
  private func layout() {
    view.addSubview(loginView)
    NSLayoutConstraint.activate([
      loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
    ])
  }
}

