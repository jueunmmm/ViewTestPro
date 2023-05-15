//
//  ViewController.swift
//  ViewTestPro
//
//  Created by Jueun Moon on 2023/04/13.
//

import UIKit

class IndexViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func present(_ sender: Any) {
       //guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as? ModalViewController else{return}
           // 스토리보드 id                 객체명
        // 스토리보드 id대신 해당  vc 이름 가져와서 사용 가능
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: String(describing: ModalViewController.self)) as? ModalViewController else{return}
        
        present(secondVC, animated: true, completion: nil)
    }

    @IBAction func push(_ sender: Any) {
        guard let naviVC = self.storyboard?.instantiateViewController(withIdentifier: "NavigationViewController") as? NavigationViewController else {return}
        
        self.navigationController?.pushViewController(naviVC, animated: true)
    }
   
    @IBAction func showTableVC(_ sender: Any) {
        guard let tableVC = self.storyboard?.instantiateViewController(withIdentifier: String(describing: TableViewController.self)) as? TableViewController else {return}
        
        self.navigationController?.pushViewController(tableVC, animated: true)
    }
    
    @IBAction func getApiData(_ sender: Any) {
        guard let apiDataVC = self.storyboard?.instantiateViewController(withIdentifier: String(describing: ApiViewController.self)) as? ApiViewController else { return }
        
        self.navigationController?.pushViewController(apiDataVC, animated: true)
    }
    
}

