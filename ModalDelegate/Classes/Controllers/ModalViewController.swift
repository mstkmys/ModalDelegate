//
//  ModalViewController.swift
//  ModalDelegate
//
//  Created by Miyoshi Masataka on 2018/04/11.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

protocol ModalViewDelegate {
    func userCloseButton(_ viewController: ModalViewController, didTapButton button: UIButton)
}

class ModalViewController: UIViewController {
    
    // MARK: - Properties
    
    public var delegate: ModalViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions

    @IBAction private func closeButtonTapped(_ sender: UIButton) {
        delegate?.userCloseButton(self, didTapButton: sender)
    }
    
}





















