//
//  ViewController.swift
//  TableView
//
//  Created by Matheus Freitas Martins on 07/10/23.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var strings: [String] = ["Alpha", "Beta", "Unlimited", "Revised"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "testVC")
        vc.navigationItem.title = strings[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
       
        cell.customImageView.image = UIImage(systemName: "square.fill")
        
        switch indexPath.row {
        case 0:
            cell.customImageView.tintColor = .orange
        case 1:
            cell.customImageView.tintColor = .cyan
        case 2:
            cell.customImageView.tintColor = .green
        default:
            cell.customImageView.tintColor = .black
        }
        
        cell.customLabel.text = strings[indexPath.row]
        
        return cell
    }
    
    
}

