//
//  MasterViewController.swift
//  StartRxSwift
//
//  Created by kazuy on 2018/12/08.
//  Copyright © 2018 kazuy. All rights reserved.
//

import UIKit
import RxSwift

class MasterViewController: UIViewController {

    @IBOutlet weak var greetingsLabel: UILabel!
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func selectCharacter(_ sender: Any) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.selectedCharacter.subscribe(onNext: { [weak self] character in
            self?.greetingsLabel.text = "Hello \(character)"
        }).disposed(by: disposeBag)

        navigationController?.pushViewController(detailVC, animated: true)
    }

    func didSelectCharacter(_ name: String) {
        self.greetingsLabel.text = "Hello \(name)"
    }
}

