//
//  ViewController.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/5/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit
import SnapKit

class BaseCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
    }
}

class VideoCell : BaseCell{
    
//    var profileImg : UIImageView = {
//        let img = UIImageView()
//        img.image = #imageLiteral(resourceName: "taylor_swift_profile")
//        img.layer.cornerRadius = 22
////        img.clipsToBounds = true
//        img.layer.masksToBounds = true
//        img.contentMode = .scaleAspectFill
//        img.translatesAutoresizingMaskIntoConstraints = false
//        return img
//    }()
//
//    var videoImg : UIImageView = {
//        let img = UIImageView()
//        img.image = #imageLiteral(resourceName: "taylor_swift_blank_space")
//        img.contentMode = .scaleAspectFill
//        img.clipsToBounds = true
//        img.translatesAutoresizingMaskIntoConstraints = false
//        return img
//    }()
//
//    let nameLabel : UILabel = {
//        let label = UILabel()
//        label.text = "Taylor Swift - Blank Space"
//        label.numberOfLines = 2
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    let descTextView : UITextView = {
//        let tv = UITextView()
//        tv.text = "TaylorSwiftVIVO • 1,230,456 views • 2 years"
//        tv.textColor = .lightGray
//        tv.textContainerInset = UIEdgeInsets(top: 0 , left: -4, bottom: 0, right: 0)
//        tv.translatesAutoresizingMaskIntoConstraints = false
//        return tv
//    }()
//
//    let seperatorView : UIView = {
//        let view = UIView()
//        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    override func setupViews() {
        if let videoCellView = Bundle.main.loadNibNamed("VideoCellView", owner: self, options: nil)?.first as? VideoCellView {
//            videoCellView.frame = self.frame
            addSubview(videoCellView)
            
            videoCellView.snp.makeConstraints { (make) in
                make.top.equalToSuperview()
                make.bottom.equalToSuperview()
                make.left.equalToSuperview()
                make.right.equalToSuperview()
            }
        }else{
            backgroundColor = .yellow
        }
//        addSubViews(views: profileImg , nameLabel , descTextView , videoImg , seperatorView)
//
//        addConstraints()
    }
    
    fileprivate func addSubViews(views: UIView...){
        for view in views {
            addSubview(view)
        }
    }
    
    fileprivate func addConstraints(){
        
//        addConstraintsWithFormat("H:|-16-[v0]-16-|", views: videoImg)
        
//        addConstraintsWithFormat("H:|-16-[v0(44)]", views: profileImg)
        
        //vertical constraints
//        addConstraintsWithFormat("V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: videoImg, profileImg, seperatorView)
        
//        addConstraintsWithFormat("H:|[v0]|", views: seperatorView)
//
//        //top constraint
//        addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .top, relatedBy: .equal, toItem: videoImg, attribute: .bottom, multiplier: 1, constant: 8))
//        //left constraint
//        addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .left, relatedBy: .equal, toItem: profileImg, attribute: .right, multiplier: 1, constant: 8))
//        //right constraint
//        addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .right, relatedBy: .equal, toItem: videoImg, attribute: .right, multiplier: 1, constant: 0))
//        //height constraint
//        addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
//
//        //top constraint
//        addConstraint(NSLayoutConstraint(item: descTextView, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 4))
//        //left constraint
//        addConstraint(NSLayoutConstraint(item: descTextView, attribute: .left, relatedBy: .equal, toItem: profileImg, attribute: .right, multiplier: 1, constant: 8))
//        //right constraint
//        addConstraint(NSLayoutConstraint(item: descTextView, attribute: .right, relatedBy: .equal, toItem: videoImg, attribute: .right, multiplier: 1, constant: 0))
//        //height constraint
//        addConstraint(NSLayoutConstraint(item: descTextView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        
//        videoImg.snp.makeConstraints { (make) in
//            make.top.equalToSuperview().offset(16)
//            make.trailing.equalToSuperview().offset(-16)
//            make.leading.equalToSuperview().offset(16)
//            make.bottom.equalTo(profileImg.snp.top).offset(-8)
//        }
//
//        profileImg.snp.makeConstraints { (make) in
//            make.width.height.equalTo(44)
//            make.top.equalTo(videoImg.snp.bottom).offset(8)
//            make.bottom.equalTo(seperatorView.snp.top).offset(-16)
//            make.leading.equalToSuperview().offset(16)
//        }
//
//        nameLabel.snp.makeConstraints { (make) in
//            make.top.equalTo(videoImg.snp.bottom).offset(8)
//            make.right.equalTo(videoImg.snp.right)
//            make.left.equalTo(profileImg.snp.right).offset(8)
//            make.height.equalTo(20)
//        }
//
//        descTextView.snp.makeConstraints { (make) in
//            make.left.equalTo(profileImg.snp.right).offset(8)
//            make.right.equalTo(videoImg.snp.right)
//            make.top.equalTo(nameLabel.snp.bottom).offset(4)
//            make.height.equalTo(30)
//        }
//
//        seperatorView.snp.makeConstraints { (make) in
//            make.top.equalTo(profileImg.snp.bottom).offset(16)
//            make.left.equalToSuperview()
//            make.right.equalToSuperview()
//            make.height.equalTo(1)
//        }
    }
    
}

class HomeViewController: UIViewController {
    
    let cellId = "videoCellId"
    
    lazy var collectionView : UICollectionView = {
        let cv = UICollectionView(frame: self.view.frame , collectionViewLayout: UICollectionViewFlowLayout())
        cv.delegate = self
        cv.dataSource = self
        
        //register cells
        cv.register(VideoCell.self, forCellWithReuseIdentifier: cellId)
        
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
    }
    
    
    
    
}

extension UIView {
    func addConstraintsWithFormat(_ format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

