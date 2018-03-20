//
//  ViewController.swift
//  UIalert
//
//  Created by gdcp on 2018/3/20.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UISearchBarDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let search = UISearchBar()
        
        search.frame = CGRect(x: 0, y: 50, width: self.view.bounds.width, height: 50)
        
        search.showsScopeBar = true
        search.showsCancelButton = true
        search.showsSearchResultsButton = true
        search.tintColor = UIColor.blue
        search.scopeButtonTitles = ["1","2","3"]
        
        search.delegate = self
        
        self.view.addSubview(search)
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        print("输入的搜索文本为\(searchBar.text ?? "输入值为空")")
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
//        let alert = UIAlertController(title: "hello world", message: "请输入密码：", preferredStyle: .alert)
//        
//        let action1 = UIAlertAction(title: "确定", style: .default) { (UIAlert) in
//            print("确定")}
//        let action2 = UIAlertAction(title: "取消", style: .cancel) { (sss) in
//            print("取消")}
//        
//        alert.addAction(action1)
//        alert.addAction(action2)
//        alert.addTextField { (textfield) in
//            textfield.placeholder = "请输入密码"
//        }
//        self.present(alert, animated: true, completion: nil)
//        
//        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

