//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by 月岡　悠 on 2020/01/28.
//  Copyright © 2020 AutoRecipe_Developers. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.rx.text.orEmpty
        .map {$0.description}
        .bind(to: label.rx.text)
        .disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
