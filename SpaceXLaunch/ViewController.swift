//
//  ViewController.swift
//  SpaceXLaunch
//
//  Created by Saideep Reddy Talusani on 9/4/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    struct SpaceX{
        let name: String
        let description: String
        let launchTime: String
        var status: String
    }
    let detailsOfRockets:[SpaceX] = [SpaceX(name:"Falcon 10", description: "This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Falcon 9", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Falcon 8", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Falcon 7", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Tess", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Tess", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Tess", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Tess", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Tess", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success"),
    SpaceX(name:"Tess", description: "This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket.This is a rocket.This is a rocket. This is a rocket.This is a rocket. This is a rocket.This is a rocket. ",launchTime: "5:54pm Monday", status: "Success")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailsOfRockets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "SpaceXLaunch") as? SpaceXLaunch
        guard let cell = customCell else {
            return UITableViewCell()
        }
        
        let launch = detailsOfRockets[indexPath.row]
        cell.rocketNameLabel.text = launch.name
        cell.rocketDescription.text = launch.description
        cell.rocketLaunchTime.text = launch.launchTime
        cell.statusOfRocket.text = launch.status
        cell.statusOfRocket.textColor = .green
        return cell
    }

}

