//
//  DetailsVC.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var dogsTable: UITableView!
    
    var images: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup(){
        dogsTable.registerNib(type: DogsTVC.self)
        dogsTable.delegate = self
        dogsTable.dataSource = self
    }
}

extension DetailsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(type: DogsTVC.self, indexPath: indexPath)
        cell.imageUrl = images?[indexPath.item]
        cell.selectionStyle = .none
        return cell
    }
    
}
