//
//  ModalViewController.swift
//  ViewTestPro
//
//  Created by Jueun Moon on 2023/04/13.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.modalTransitionStyle 새 화면을 띄울 떄 효과 설정
        self.modalPresentationStyle = .fullScreen // 뜬 화면에 대한 레이아웃 설정
        // Do any additional setup after loading the view.
    }
    

    @IBAction func dismiss(_ sender: Any) {
        //self.presentingViewController?.dismiss(animated: true)
        self.dismiss(animated: true)
    }
}
