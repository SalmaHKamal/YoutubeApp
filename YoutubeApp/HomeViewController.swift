//
//  ViewController.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/5/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let cellId = "videoCellId"
    
    lazy var collectionView : UICollectionView = {
        let cv = UICollectionView(frame: self.view.frame , collectionViewLayout: UICollectionViewFlowLayout())
        cv.delegate = self
        cv.dataSource = self
        
        //register cells
        cv.register(UINib(nibName: "VideoCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        cv.backgroundColor = .white
        
        return cv
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)

    }

}

extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? VideoCell
            else { return UICollectionViewCell() }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = ( view.frame.width - 16 - 16 ) * 9 / 16
        return CGSize(width: view.frame.width, height: height + 16 + 68)
        
        //height is estimated image height
        // 16 is the top space between video image and superview
        // 68 = space between video image [8] + profile image height [44] + space betwwn profile image and seperator [16]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
