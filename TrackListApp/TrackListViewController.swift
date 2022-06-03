//
//  TrackListViewController.swift
//  TrackListApp
//
//  Created by aiv on 03.06.2022.
//

import UIKit

class TrackListViewController: UITableViewController {
    
    let trackList = [
                     "Скриптонит: Дом с нормальными явлениями",
                     "Скриптонит: Праздник на улице 36",
                     "Скриптонит: Уроборос. Улица 36",
                     "Скриптонит: Уроборос. Зеркала",
                     "Скриптонит: 2004",
                     "Скриптонит: Свистки и бумажки"
    ]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName", for: indexPath)
        
        cell.textLabel?.text = trackList[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
