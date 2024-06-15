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
    
    private let viewModel = HomeViewModel()
    
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
        getNextDog(self)
        checkForIndex()
    }
    private func showLoader(){
        loader.startAnimating()
        loader.isHidden = false
    }
    private func hideLoader(){
        loader.stopAnimating()
        loader.isHidden = true
    }
    
    private func checkForIndex(){
        print(viewModel.index)
        prevbtn.isEnabled = (viewModel.index != 1)
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
            do{
                guard let images = try await viewModel.getImages(number:Int(imgStepper.value)) else {
                    hideLoader()
                    return
                }
                navigateToDetailsPage(images: images)
            }catch let err {
                hideLoader()
                debugPrint(err)
            }
        }
    }
    
    private func loadImg(url: String?){
        let url = URL(string: url ?? "")
        imgView.kf.setImage(with: url)
        hideLoader()
    }
    
    
    @IBAction func getNextDog(_ sender: Any) {
        showLoader()
        Task{
            do{
                let resultImg = try await viewModel.getNextImage()
                loadImg(url: resultImg)
                checkForIndex()
            }catch let err {
                hideLoader()
                debugPrint(err)
            }
        }
        
        
    }
    
    @IBAction func getPreviousDog(_ sender: Any) {
        showLoader()
        Task{
            do{
                let resultImg = try await viewModel.getPrevImage()
                loadImg(url: resultImg)
                checkForIndex()
            }catch let err {
                hideLoader()
                debugPrint(err)
            }
        }
        
    }
    
    
    private func navigateToDetailsPage(images: [String]){
        hideLoader()
        let vc = DetailsVC()
        vc.images = images
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

