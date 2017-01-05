//
//  ContactViewController.swift
//  GetOnBoardSwift
//
//  Created by Oscar on 1/5/17.
//  Copyright © 2017 RokkrsStore. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Para ser reconocido por el ViewController nuestra scrollView se debe agregar
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }

}
