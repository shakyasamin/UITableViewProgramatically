//
//  VideoListVC.swift
//  UITableViewProgramatically
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 30/05/2023.
//

import UIKit

class VideoListVC: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 100
       
        //register cells
        
        tableView.pin(to:view)
    }
    func setTableViewDelegate () {
        tableView.delegate = self
        tableView.dataSource = self
    }

  

}
extension VideoListVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
