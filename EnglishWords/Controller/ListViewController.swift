//
//  ListViewController.swift
//  EnglishWords
//
//  Created by Owner on 2021/02/03.
//

import UIKit
import VerticalCardSwiper


class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak  var listTableView:UITableView!
    var knowEngWords = [String]()
    var knowJapaWords = [String]()
    
    var nihongo = String()
    var eigo = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.delegate = self
        listTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return knowJapaWords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .brown
        
        nihongo = knowJapaWords[indexPath.row]
        eigo = knowEngWords[indexPath.row]
        
        let nihongoLabel = cell.contentView.viewWithTag(1) as! UILabel
        let eigoLabel = cell.contentView.viewWithTag(2) as! UILabel
        
        nihongoLabel.text = nihongo
        eigoLabel.text = eigo
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            knowEngWords.remove(at: indexPath.row)
            knowJapaWords.remove(at: indexPath.row)
            listTableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    func toDetailScreen(){
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    @IBAction func didTapGoBackButton(sender:UIButton){
        dismiss(animated: true, completion: nil)
    }
}
