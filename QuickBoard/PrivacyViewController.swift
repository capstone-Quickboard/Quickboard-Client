//
//  PrivacyViewController.swift
//  QuickBoard
//
//  Created by Soojeong on 2022/10/04.
//

import UIKit

class PrivacyViewController: UIViewController {

    @IBOutlet weak var buttonOk: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOkClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
