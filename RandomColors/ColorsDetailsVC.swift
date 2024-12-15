//
//  ColorsDetailsVC.swift
//  RandomColors
//
//  Created by Peyman on 12/15/24.
//

import UIKit

class ColorsDetailsVC: UIViewController {

    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .blue
    }
    

}
