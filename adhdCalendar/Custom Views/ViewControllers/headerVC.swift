//
//  headerVC.swift
//  adhdCalendar
//
//  Created by Kris Kodweis on 3/4/23.
//

import UIKit

class headerVC: UIView { }
    /*
    let containerView = adhdContainerView()
    let welcomeLabel = adhdTitleLabel(textAlignment: .center, fontSize: 18)
    
    var welcomeMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        configureContainerView()
        configureTitleLabel()
    }
    
    init(welcomeMessage: String){
        super.init(nibName: nil, bundle: nil)
        self.welcomeMessage = welcomeMessage
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        view.backgroundColor = .systemMint
        view.layer.cornerRadius = 20
        
    }
    
    private func configureContainerView() {
        let padding: CGFloat = 20
        
        view.addSubview(containerView)
    
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: padding),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
        
        
    }
    
    private func configureTitleLabel() {
        let padding: CGFloat = 20
        
        containerView.addSubview(welcomeLabel)
        welcomeLabel.text = welcomeMessage ?? "Error: No Message"
        print(welcomeLabel.text)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            welcomeLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: padding),
            welcomeLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            //welcomeLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding)
            
        ])
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}  */
