//
//  ViewController.swift
//  Something
//
//  Created by Савва Пономарев on 14.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var BRPMLabel: UILabel!
    @IBOutlet var getSomethingInfo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getSomethingInfo.addTarget(self, action: #selector(SwitchText), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    @objc func SwitchText(){
//        BRPMLabel.text = "ладно"
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true"
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            print(data)
        }
        task.resume()
    }
}

