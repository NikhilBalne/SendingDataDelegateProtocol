//
//  ViewController.swift
//  SendingDataDelegate
//
//  Created by iHub on 06/11/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit
                                               //1
class FirstViewController : UIViewController,MyDataSendingDelegateProtocol {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        //2
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    //3
    // Delegate Method
    func sendDataToFirstViewController(myData: String) {
        textLabel.text = myData
    }
    
}

