//
//  MainViewController.swift
//  ModalDelegate
//
//  Created by Miyoshi Masataka on 2018/04/11.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Methods
    
    private func presentModalViewController() {
        guard let modalVC = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as? ModalViewController else {
            return
        }
        modalVC.delegate = self
        present(modalVC, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    
    @IBAction private func showModalButtonTapped(_ sender: UIButton) {
        presentModalViewController()
    }
    
}

// MARK: - ModalViewDelegate
/*******************************************************************************************/
extension MainViewController: ModalViewDelegate {
    
    func userCloseButton(_ viewController: ModalViewController, didTapButton button: UIButton) {
        dismiss(animated: true) {
            self.presentModalViewController()
        }
    }
    
}





















