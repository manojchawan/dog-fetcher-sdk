//
//  ViewController.swift
//  Example
//
//  Created by Manoj Chvan on 13/06/24.
//

import UIKit
import DogFetcher

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup(){
        Task{
            do{
                let dogFinder = DogFinder()
                let img = try await dogFinder.getImage()
                print(img)
            }
        }
    }


}

