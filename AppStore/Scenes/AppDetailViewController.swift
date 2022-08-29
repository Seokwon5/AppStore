//
//  AppDetailViewController.swift
//  AppStore
//
//  Created by 이석원 on 2022/08/29.
//

import UIKit
import SnapKit

final class AppDetailViewController: UIViewController {
    
    private lazy var appIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true //이미지가 커서 넘치지 않게.
        imageView.layer.cornerRadius = 8.0
        imageView.backgroundColor = .gray
        
        return imageView
    }()
    
    private lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20.0, weight: .bold)
        label.textColor = .label
    
        return label
    }()
    
    private lazy var subTitleLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
        label.textColor = .secondaryLabel
        
        return label
    }()
    
    private lazy var downloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("받기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13.0, weight: .bold)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12.0
        
        return button
    }()
    
    private lazy var shareButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        button.tintColor = .systemBlue
        
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupViews()
        
        appIconImageView.backgroundColor = .lightGray
        titleLabel.text = "title"
        subTitleLabel.text = "Sub title"
    }
}
 
private extension AppDetailViewController {
    func setupViews() {
        [appIconImageView,
         titleLabel,
         subTitleLabel,
         downloadButton,
         shareButton].forEach { view.addSubview($0)}
        
        appIconImageView.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(32.0)
            $0.height.equalTo(100.0)
            $0.width.equalTo(appIconImageView.snp.height)
        }
        titleLabel.snp.makeConstraints{
            $0.leading.equalTo(appIconImageView.snp.trailing).offset(16.0)
            $0.top.equalTo(appIconImageView.snp.top)
            $0.trailing.equalToSuperview().inset(16.0)
        }
        subTitleLabel.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(4.0)
            $0.leading.equalTo(titleLabel.snp.leading)
        }
        
        downloadButton.snp.makeConstraints{
            $0.bottom.equalTo(appIconImageView.snp.bottom)
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.width.equalTo(60.0)
            $0.height.equalTo(32.0)
        }
        
        shareButton.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(16.0)
            $0.height.equalTo(32.0)
            $0.width.equalTo(shareButton.snp.height)
            $0.bottom.equalTo(downloadButton.snp.bottom)
        }
    }
}
