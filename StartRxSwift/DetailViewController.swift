//
//  DetailViewController.swift
//  StartRxSwift
//
//  Created by kazuy on 2018/12/08.
//  Copyright © 2018 kazuy. All rights reserved.
//

import UIKit
import RxSwift

class DetailViewController: UIViewController {

    private let selectedCharacterVariable = Variable("User")
    var selectedCharacter: Observable<String> {
        return selectedCharacterVariable.asObservable()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func characterSelected(_ sender: UIButton) {
        guard let characterName = sender.titleLabel?.text else {return}

        selectedCharacterVariable.value = characterName
    }

}
