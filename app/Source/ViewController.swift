//
//  ViewController.swift
//  Demo
//
//  Created by John Nguyen on 15.10.20.
//  Copyright © 2020 John Nguyen. All rights reserved.
//

import UIKit
import Common

class ViewController: UIViewController {

  private let label = UILabel()
  private let greeter = Greeter()

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpLabel()
  }

  private func setUpLabel() {
    label.text = greeter.greet(name: "John")
    view.addSubview(label)

    label.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }

}

