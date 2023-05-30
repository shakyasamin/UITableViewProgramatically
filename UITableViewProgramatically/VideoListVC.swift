//
//  VideoListVC.swift
//  UITableViewProgramatically
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 30/05/2023.
//

import UIKit

class VideoListVC: UIViewController {
    
    var tableView = UITableView()
    var videos: [Video] = []
    
    struct Cells {
        static let videoCell = "videoCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sean's Videos"
        videos = fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: "videoCell")
       
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
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell) as! VideoCell
        let video = videos[indexPath.row]
        cell.set(video: video)
        return cell
    }
    
    
}

extension VideoListVC {
    func fetchData() -> [Video] {
        let video1 = Video(image: Images.noStoryboard, title: "No Storyboards")
        let video2 = Video(image: Images.softSkills, title: "5 Soft Skills for Development")
        let video3 = Video(image: Images.xcode, title: "What's new in Xcode11")
        let video4 = Video(image: Images.patreon, title: "Patren Revamp")
        let video5 = Video(image: Images.raise, title: "How i got a Raise")
        let video6 = Video(image: Images.shake, title: "Shake Gesture")
        let video7 = Video(image: Images.salaries, title: "2019 state of Salaries")
        let video8 = Video(image: Images.wireless, title: "How to build app wirelessly")
        let video9 = Video(image: Images.swiftNews, title: "Swift News 70")
        let video10 = Video(image: Images.ninety, title: "The 90/90 rules")
        
        return [video1,video2,video3,video4,video5,video6,video7,video8,video9,video10]
        
    }
    
}
