//
//  ViewController.swift
//  ParsingJsonByWeather
//
//  Created by Алексей Гуляев on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ApiManager.getData() {response in
            print(response)
        }
    }


}

