//
//  SecondViewController.swift
//  IdealKadai8
//
//  Created by 中野翔太 on 2022/01/10.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var slider: UISlider!

    
    var delegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = delegate.shardValue
        resultLabel.text = String(delegate.shardValue)
    }
    
    @IBAction func changeSlider(sender: Any) {
        delegate.shardValue = slider.value
        resultLabel.text = String(delegate.shardValue)
    }

}
