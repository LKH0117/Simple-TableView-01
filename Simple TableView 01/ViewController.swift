//
//  ViewController.swift
//  Simple TableView 01
//
//  Created by D7702_09 on 2018. 5. 2..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTV: UITableView!
    var animal = ["고양이", "개", "새", "소", "밥"]
    var country = ["미제" , "국산", "일제", "국산" , "존맛"]
    var check = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delegate viewcontroller 연결
        myTV.delegate = self
        myTV.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell 메모리 재활용
        let id = "RE"
        let cell = myTV.dequeueReusableCell(withIdentifier: id, for: indexPath)
        //cell에 이미지 넣기
//        if check == 0 {
//        let myImg = UIImage(named:"1.jpeg")
//        cell.imageView?.image = myImg
//        check = check + 1
//        } else if check == 1 {
//            let myImg = UIImage(named:"2.jpeg")
//            cell.imageView?.image = myImg
//            check = check + 1
//        } else if check == 2 {
//            let myImg = UIImage(named:"3.jpeg")
//            cell.imageView?.image = myImg
//            check = check + 1
//        } else {
//            let myImg = UIImage(named:"1.jpeg")
//            cell.imageView?.image = myImg
//            check = check - 2
//        }
        let myImg = UIImage(named:"\(indexPath.row + 1).jpeg")
        cell.imageView?.image = myImg
        cell.textLabel?.text = animal[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        return cell
    }
    

}

