//
//  TableViewController.swift
//  ViewTestPro
//
//  Created by Jueun Moon on 2023/04/17.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "myCell")
//        cell.textLabel?.text = "\(indexPath.row)"
//        cell.imageView?.image = UIImage(systemName: "moon")
        
         // 안됨.
//        tableView.dequeueReusableCell(withIdentifier: String(describing: MyTableViewCell.self), for: indexPath)까지는 MyTableViewCell의 부모에게 접근
//        as로 downcasting해줌
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", `for`: indexPath) as! MyTableViewCell
        cell.myLabel.text = indexPath.description
        return cell
        
        
    }
     
//     테이블의 섹션에 대한 설정을 지정하는 함수
//     default값이 1로 지정되어 있으므로 필수 구현 함수가 아님.
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3ㅋㅋㅌ쿜ㅌ
//    }
}
