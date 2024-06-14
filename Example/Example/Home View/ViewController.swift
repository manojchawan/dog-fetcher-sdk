//
//  ViewController.swift
//  Example
//
//  Created by Manoj Chvan on 13/06/24.
//

import UIKit
import DogFetcher

class ViewController: UIViewController {

    @IBOutlet weak var stepperCount: UILabel!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var imgStepper: UIStepper!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var prevbtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    private let viewModel = HomeViewModel(dogFinder: DogFinder())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    private func setupUI(){
        self.title = "Perfect Paws"
        imgView.layer.cornerRadius = 12
        nextBtn.layer.cornerRadius = 8
        prevbtn.layer.cornerRadius = 8
        submitBtn.layer.cornerRadius = 8
        stepperChanged(self)
        showLoader()
    }
    private func showLoader(){
        loader.startAnimating()
        loader.isHidden = false
    }
    private func hideLoader(){
        loader.stopAnimating()
        loader.isHidden = true
    }
    
    @IBAction func stepperChanged(_ sender: Any) {
        stepperCount.text = Int(imgStepper.value).description
        if imgStepper.value == 0 {
            submitBtn.isEnabled = false
        }else{
            submitBtn.isEnabled = true
        }
    }
    
    @IBAction func getMultipleImages(_ sender: Any) {
        showLoader()
        Task{
            let images = try? await viewModel.getImages(number:Int(imgStepper.value))
            navigateToDetailsPage(images: images)
        }
    }
    
    private func navigateToDetailsPage(images: [String]?){
        hideLoader()
        guard let _ = images else {return}
        let vc = DetailsVC()
        vc.images = images
        navigationController?.pushViewController(vc, animated: true)
    }

}

