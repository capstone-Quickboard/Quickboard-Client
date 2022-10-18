//
//  HomeViewController.swift
//  Quickboard
//
//  Created by youngjun on 2022/09/27.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
//    @IBOutlet weak var keywordAddButton: UIButton!
    @IBOutlet weak var keywordAddButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackButtonItem()
        
        tableView.delegate = self
        tableView.dataSource = self
        let nibName = UINib(nibName: "HomeTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "HomeTableViewCell")
    }
    @IBAction func keywordAddButtonDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Keyword", bundle: nil)
        let pushVC = storyboard.instantiateViewController(withIdentifier: "KeywordViewController")
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
    
    func setBackButtonItem(){
        let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        backBarButtonItem.tintColor = .black
        self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50
    }
    
    
}
