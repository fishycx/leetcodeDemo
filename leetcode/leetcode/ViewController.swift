//
//  ViewController.swift
//  leetcode
//
//  Created by 余传兴 on 2017/8/25.
//  Copyright © 2017年 fishycx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextFiled: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBAction func submit(_ sender: Any) {
        self.result.text = "\(Solution().reverse(x: Int(inputTextFiled.text ?? "0")!))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
