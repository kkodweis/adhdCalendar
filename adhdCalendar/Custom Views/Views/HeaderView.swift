//
//  HeaderView.swift
//  adhdCalendar
//
//  Created by Kris Kodweis on 3/5/23.
//

import UIKit

class HeaderView: UIView {
    
    let containerView = adhdContainerView()
    let titleLabel = adhdTitleLabel(textAlignment: .center, fontSize: 18)
    
    var title: String?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(backgroundColor: .systemBrown)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.title = title
        configure(backgroundColor: backgroundColor)
    }
    
    private func configure(backgroundColor: UIColor) {
        layer.cornerRadius = 10
        addSubview(containerView)
        containerView.addSubview(titleLabel)
        titleLabel.text = title
        
        containerView.
        //setTitleColor(.white, for: .normal)
        //titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        //self.setTitle(title, for: .normal)
    }

}
