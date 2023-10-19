//
//  PageToReadViewController.swift
//  Something
//
//  Created by Савва Пономарев on 15.10.2023.
//

import UIKit

class PageToReadViewController: UIViewController {

    
    @IBOutlet weak var DreamsArray: UITableView!
    
    let cellIndentifier = String(describing: DreamCell.self)
    
    var dreams = [DreamInfo(name: "FirstTest")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DreamsArray.delegate = self
        DreamsArray.dataSource = self
        DreamsArray.register(UINib(nibName: "Dream", bundle: nil), forCellReuseIdentifier: cellIndentifier )
    }
    

}

extension PageToReadViewController : UITableViewDelegate,  UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dreams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as! DreamCell
        
        
        
        return cell
    }
}
