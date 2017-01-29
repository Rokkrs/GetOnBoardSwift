//
//  InitViewController.swift
//  GetOnBoardSwift
//
//  Created by Oscar on 1/5/17.
//  Copyright © 2017 RokkrsStore. All rights reserved.
//

import UIKit

class InitViewController: UIViewController {
    
    @IBOutlet weak var backgroundImg: UIImageView!
    
    @IBOutlet weak var titleStr: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var productName : String?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        titleStr.text = productName
        //backgroundIMG.image = UIImage(named: "phone-fullscreen3")
        backgroundImg.image = #imageLiteral(resourceName: "phone-fullscreen3") // new function swift 3 ImageLiteral
        //button.setTitle("my text here", forState: UIControlState.Normal)
        nextBtn.setTitle("Press Continue...", for: .normal)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func doPress() {
//        print("Presionaron el boton!!!")
//    }
    
    @IBAction func doPress(_ sender: Any) {
        print("Presionaron el boton!!!")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
