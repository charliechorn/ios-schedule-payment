//
//  FormViewController.swift
//  Bankey
//
//  Created by Chhaly CHHORN on 22/7/23.
//

import UIKit

class FormViewController: UIViewController {
  
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var stackView: UIStackView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }

  func setupView() {
    stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
    let colors: [UIColor] = [.black, .red, .yellow, .green, .blue]
    let sizes: [CGFloat] = [30, 90, 80, 100, 120]

    for i in 0...4 {
      let view = UIView()
      view.translatesAutoresizingMaskIntoConstraints = false
      view.widthAnchor.constraint(equalToConstant: view.bounds.size.width).isActive = true
      view.heightAnchor.constraint(equalToConstant: sizes[i]).isActive = true
      
      view.backgroundColor = colors[i]
      stackView.addArrangedSubview(view)
      stackView.layoutSubviews()
    }
  }
  
}
