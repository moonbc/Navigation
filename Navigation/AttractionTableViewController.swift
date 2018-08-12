//
//  AttractionTableViewController.swift
//  Navigation
//
//  Created by 402-07 on 2018. 8. 4..
//  Copyright © 2018년 moonbc. All rights reserved.
//

import UIKit

class AttractionTableViewController: UITableViewController {

    //테이블 뷰에 출력할 데이터 배열 변수를 선언
    var attractionImages = [String]() //이미지 파일이름 배열
    var attractionNames = [String]() //테이블에 출력할 문자열 배열
    var attractionWeb = [String]() //하위 컨트롤러에게 넘겨줄 웹 주소 배열
    
    //뷰가 다시 보여질 때 호출되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        attractionNames = ["Buckingham Palace",
                           "The Eiffel Tower",
                           "The Grand Canyon",
                           "Windsor Castle",
                           "Empire State Building"]
        attractionWeb = ["http://en.wikipedia.org/wiki/Buckingham_Palace",
                        "http://en.wikipedia.org/wiki/Eiffel_Tower",
                        "http://en.wikipedia.org/wiki/Grand_Canyon",
                        "http://en.wikipedia.org/wiki/Windsor_Castle",
                        "http://en.wikipedia.org/wiki/Empire_State_Building"]
        attractionImages = ["buckingham_palace.jpg",
                            "eiffel_tower.jpg",
                            "grand_canyon.jpg",
                            "windsor_castle.jpg",
                            "empire_state_building.jpg"]
        
        tableView.estimatedRowHeight = 150
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return attractionNames.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AttratactionTableViewCell", for: indexPath) as! AttratactionTableViewCell

        // Configure the cell...
        
        cell.attractionImage.image = UIImage(named: attractionImages[indexPath.row])
        cell.attractionLabel.text = attractionNames[indexPath.row]
        cell.accessoryType = .disclosureIndicator

        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //하위 뷰 컨틀롤러 객체를 생성
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "AttractionDetailViewController") as! AttractionDetailViewController
        
        
        detailViewController.webSite = attractionWeb[indexPath.row]
        
        self.navigationController?.pushViewController(detailViewController, animated: true)
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
