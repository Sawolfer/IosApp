//
//  ViewController.swift
//  Something
//
//  Created by Савва Пономарев on 14.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonToRead: UIButton!
    @IBOutlet var buttonToWrite: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonToRead.addTarget(self, action: #selector(openPageToRead), for: .touchUpInside)
        buttonToWrite.addTarget(self, action: #selector(openPageToWrite), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func openPageToRead(){
        print("read ")
    }
    
    @objc func openPageToWrite(){
        print("write")
    }
    
}

