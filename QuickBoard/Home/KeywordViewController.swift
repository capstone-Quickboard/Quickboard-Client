//
//  KeywordViewController.swift
//  QuickBoard
//
//  Created by youngjun on 2022/10/14.
//

import UIKit

class KeywordViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "KeywordCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KeywordCell")

    }
    
    func setNavigationBar(){
        self.navigationItem.title = "키워드 알림 설정"
    }
    
}

extension KeywordViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KeywordCell", for: indexPath) as! KeywordCollectionViewCell
        return cell
    }
    
    

}
