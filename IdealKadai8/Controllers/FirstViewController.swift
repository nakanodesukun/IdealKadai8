//
//  FirstViewController.swift
//  IdealKadai8
//
//  Created by 中野翔太 on 2022/01/10.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    //AppDelegate にアクセスしやすいよう、Computer property を追加しました。ユーザー入力などの外部要素によって結果が変わるわけではないので、as!を使用しています
    var delegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }
    //　viewが表示される直前に表示される。Tabbarならタブの切り替え時
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = delegate.shardValue
        resultLabel.text = String(slider.value)
    }
    @IBAction func changeSlider(sender: Any) {
        delegate.shardValue = slider.value
        resultLabel.text = String(delegate.shardValue)
    }
}
