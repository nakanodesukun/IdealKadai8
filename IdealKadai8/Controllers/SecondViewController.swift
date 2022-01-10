//
//  SecondViewController.swift
//  IdealKadai8
//
//  Created by 中野翔太 on 2022/01/10.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    
  private var delegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = delegate.shardValue
        resultLabel.text = String(delegate.shardValue)
    }
    
    @IBAction private func changeSlider(sender: Any) {
        delegate.shardValue = slider.value
        resultLabel.text = String(delegate.shardValue)
    }

}
