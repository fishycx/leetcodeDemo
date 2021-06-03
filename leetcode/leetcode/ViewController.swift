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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.inputTextFiled.delegate = self

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController:UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let toBeString = (textField.text as NSString!).replacingCharacters(in: range, with: string)
    
        self.result.text = "\(Solution5().longestPalindrome(toBeString))"
        return true
    }
}
