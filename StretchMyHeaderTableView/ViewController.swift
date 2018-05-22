//
//  ViewController.swift
//  StretchMyHeaderTableView
//
//  Created by ruijia lin on 5/22/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kTableHeaderHeight = 300.0
    
//    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var currentDate: UILabel!
    
    let newsDict = [["World": "Climate change protests, divestments meet fossil fuels realities"],
                    ["Europe": "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"],
                    ["Middle East, summary": "Airstrikes boost Islamic State, FBI director warns more hostages possible"],
                    ["Africa": "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"],
                    ["Asia Pacific": "Despite UN ruling, Japan seeks backing for whale hunting"],
                    ["Americas": "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"],
                    ["World ": "South Africa in $40 billion deal for Russian nuclear reactors"],
                    ["Europe ": "'One million babies' created by EU student exchanges"]
    ]
    
    var headerView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 0
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let dateFormat = dateFormatter.string(from: date)
        currentDate.text = "\(dateFormat)"
        
        headerView = tableView.tableHeaderView!
        tableView.tableHeaderView = nil
        tableView.addSubview(headerView)
//
        
//        tableView.contentInset = UIEdgeInsets(top: CGFloat(kTableHeaderHeight), left: 0, bottom: 0, right: 0)
//        tableView.contentOffset = CGPoint(x: 0, y: -kTableHeaderHeight)
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
//    func updateHeaderView(){
//
//    }
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        updateHeaderView()
//    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsDict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
//        let bottomBorder = UIView.init(frame: CGRect(x: 0, y: cell.frame.size.height - 1, width: cell.frame.size.width, height: 1))
//        bottomBorder.backgroundColor = .gray
//
//        cell.contentView.addSubview(bottomBorder)
        cell.detailTextLabel?.numberOfLines = 0
        
        let news = newsDict[indexPath.row]
        for (key, value) in news{
            cell.textLabel?.text = key
            cell.detailTextLabel?.text = value
        }
        
        return cell
    }
    
}

