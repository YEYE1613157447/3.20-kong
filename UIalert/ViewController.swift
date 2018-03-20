//
//  ViewController.swift
//  UIalert
//
//  Created by gdcp on 2018/3/20.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        let alert = UIAlertController(title: "hello world", message: "请输入密码：", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "确定", style: .default) { (UIAlert) in
            print("确定")}
        let action2 = UIAlertAction(title: "取消", style: .cancel) { (sss) in
            print("取消")}
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addTextField { (textfield) in
            textfield.placeholder = "请输入密码"
        }
        self.present(alert, animated: true, completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

