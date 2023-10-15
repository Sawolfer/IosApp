//
//  PageToWriteViewController.swift
//  Something
//
//  Created by Савва Пономарев on 15.10.2023.
//

import UIKit

class PageToWriteViewController: UIViewController {

    @IBOutlet weak var NameOfNote: UITextField!
    
    @IBOutlet weak var BodyOfNote: UITextView!
    
    @IBAction func SaveButton(_ sender: Any) {
        var name = UserDefaults.standard
        var body = UserDefaults.standard
        name.set(NameOfNote.text, forKey: "Name")
        body.set(BodyOfNote.text, forKey: "Body")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tmpName = UserDefaults.standard.object(forKey: "Name")
       var tmpBody = UserDefaults.standard.object(forKey: "Body")
        
        if (tmpName != nil){
            NameOfNote.text = (tmpName as? String)!
        }
        if (tmpBody != nil){
            BodyOfNote.text = (tmpBody as? String)!
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
