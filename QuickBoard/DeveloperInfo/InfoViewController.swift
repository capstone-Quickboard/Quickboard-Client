//
//  InfoViewController.swift
//  QuickBoard
//
//  Created by Soojeong on 2022/10/03.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var buttonClose: UIButton!
    
    let name = ["임영준","민수정","김소연","박성준","신민석"]
    let position = ["pm, iOS Lead","Design, iOS","Server Lead","Server","Server"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        let feedNib = UINib(nibName: "ContactTableViewCell", bundle: nil)
        tableView.register(feedNib, forCellReuseIdentifier: "ContactTableViewCell")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonCloseClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension InfoViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as! ContactTableViewCell
        cell.labelName.text = name[indexPath.row]
        cell.labelPosition.text = position[indexPath.row]
        return cell
    }
}
