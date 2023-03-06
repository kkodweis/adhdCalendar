//
//  HomeVC.swift
//  adhdCalendar
//
//  Created by Kris Kodweis on 3/4/23.
//

import UIKit

class HomeVC: UIViewController {

    let headerVC = headerVC(welcomeMessage: "Welcome, Kris!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        // Do any additional setup after loading the view.
    }
    
    private func configure() {
        view.addSubview(headerVC)
        
        view.backgroundColor = .systemBackground
        
    }
}
