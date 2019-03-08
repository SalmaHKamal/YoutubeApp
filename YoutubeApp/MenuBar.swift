
//
//  MenuBar.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/6/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit
import SnapKit

class MenuBar: UIView {
    
    let cellId = "MenuBarCellId"

    lazy var collectionView : UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        
        cv.register(UINib(nibName: "MenuBarCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        cv.backgroundColor = UIColor.rgb(red: 230, green: 32, blue: 31)
        cv.delegate = self
        cv.dataSource = self
        
        return cv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        initCollectionView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    fileprivate func initCollectionView(){
        addSubview(collectionView)
        
        collectionView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
    }

}

extension MenuBar : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? MenuBarCell else { return UICollectionViewCell()}
        
        cell.menuItemImage.image = UIImage(named:cell.imageNames[indexPath.row])?.withRenderingMode(.alwaysTemplate)
        
        cell.tintColor = UIColor.rgb(red: 91, green: 14, blue: 13)
        
        if cell.imageNames[indexPath.row] == "home" {
            cell.tintColor = .white
            cell.underline.isHidden = false
        }
      
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width / 4 , height: self.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cells = collectionView.visibleCells as? [MenuBarCell] else { return }
        
        for cell in cells {
            if cell == collectionView.cellForItem(at: indexPath) {
                cell.tintColor = .white
                cell.underline.isHidden = false
            }else{
                cell.tintColor = UIColor.rgb(red: 91, green: 14, blue: 13)
                cell.underline.isHidden = true
            }
        }
        
    }

}

