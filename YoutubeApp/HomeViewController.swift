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
    var videos = [Video]()
    
    lazy var collectionView : UICollectionView = {
        let frame = CGRect(x: 0, y: menuBar.frame.height, width: view.frame.width, height: view.frame.height)
        let cv = UICollectionView(frame: frame , collectionViewLayout: UICollectionViewFlowLayout())
        cv.delegate = self
        cv.dataSource = self
        
        //register cells
        cv.register(UINib(nibName: "VideoCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        cv.backgroundColor = .white
        
        return cv
    }()
    
    lazy var menuBar : MenuBar = {
        let menuBar = MenuBar()
        menuBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width , height: 50)
        return menuBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(menuBar)
        view.addSubview(collectionView)
        fetchHomeVideos()

        //title
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
        
        //remove line under navigation bar
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    
    func fetchHomeVideos() {
        APIService.shared.getHomeFeed { (videos) in
            if videos.count > 0 {
                self.videos = videos
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            }
        }
    }
    
    
    @IBAction func moreBarItem(_ sender: Any) {
  
        //settings
        guard let settingsView = Bundle.main.loadNibNamed("SettingsMenuView", owner: self, options: nil)?.first as? SettingsMenuView else {return}

//        self.view.addSubview(settingsView)

    }

}

extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? VideoCell
            else { return UICollectionViewCell() }
        cell.video = videos[indexPath.row]
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
