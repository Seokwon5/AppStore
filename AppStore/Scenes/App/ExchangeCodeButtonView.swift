//
//  ExchangeCodeButtonView.swift
//  AppStore
//
//  Created by 이석원 on 2022/08/24.
//

import UIKit
import SnapKit

final class ExchangeCodeButtonView : UIView {
    
    private lazy var exchangeCodeButton : UIButton = {
    let button = UIButton()
    button.setTitle("코드 교환", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.backgroundColor = .tertiarySystemGroupedBackground
    button.titleLabel?.font = .systemFont(ofSize: 15.0, weight: .semibold)
    button.layer.cornerRadius = 7.0
        
    return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
  


private extension ExchangeCodeButtonView {
    func setupView() {
        [exchangeCodeButton].forEach { addSubview ( $0 ) }
        
        exchangeCodeButton.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(32.0)
            $0.bottom.equalToSuperview().offset(32.0)
            $0.height.equalTo(40.0)
        }
    }
}
