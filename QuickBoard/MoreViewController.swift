//
//  MoreViewController.swift
//  QuickBoard
//
//  Created by Soojeong on 2022/10/03.
//

import UIKit

class MoreViewController: UIViewController {
    
    @IBOutlet weak var buttonKeyAlert: UIButton!
    
    @IBOutlet weak var buttonSetting: UIButton!
    
    @IBOutlet weak var buttonVersion: UIButton!
    
    @IBOutlet weak var buttonPrivacy: UIButton!
    
    @IBOutlet weak var buttonService: UIButton!
    
    @IBOutlet weak var buttonInfo: UIButton!
    
    @IBOutlet weak var labelVersion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSettingClicked(_ sender: Any) {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }

        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func buttonVersionClicked(_ sender: Any) {
        let alert = UIAlertController(title: "앱 버전", message: "최신 버전입니다.", preferredStyle: UIAlertController.Style.alert)
        let defaultAction =  UIAlertAction(title: "확인", style: UIAlertAction.Style.default)
        alert.addAction(defaultAction)
        self.present(alert, animated: false)
    }
}
