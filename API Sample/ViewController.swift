//
//  ViewController.swift
//  API Sample
//
//  Created by Karen Kong on 3/31/18.
//  Copyright © 2018 Karen Kong. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var topictext: UITextField!
    @IBOutlet weak var inputtext: UITextField!
    
    @IBAction func onclicknumber(_ sender: Any) {
        if inputtext.text != "" && topictext.text != "" {
            let params: Parameters = [
                "phonenum": inputtext.text!,
                "topic": topictext.text!
            ]
            
            Alamofire.request("", method: .post, parameters: params).responseString {
                response in
                print("Success: \(response.result.isSuccess)")
            }
        }
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

