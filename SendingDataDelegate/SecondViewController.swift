//
//  SecondViewController.swift
//  SendingDataDelegate
//
//  Created by iHub on 06/11/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit

//4
protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextFiled: UITextField!
    //5
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        //6
        self.delegate?.sendDataToFirstViewController(myData: nameTextFiled.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
