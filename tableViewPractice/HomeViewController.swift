//
//  HomeViewController.swift
//  tableViewPractice
//
//  Created by Ellen Yang on 4/28/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UIWebViewDelegate, UITableViewDelegate {

   @IBOutlet weak var tableView: UITableView!

   var names: [String] = ["Ellen", "James", "Amber", "Lucas", "Tiger"]

   var users:[[String : String]] =
      [
         ["name" : "Ellen",
          "hometown" : "Taipei"],
         ["name": "James",
          "hometown" : "Taipei"],
         ["name": "Amber",
          "hometown" : "Berkeley"],
         ["name" : "Lucas",
          "hometown" : "Berkeley"],
         ["name" : "Tiger",
          "hometown" : "Woodland"]
      ]

   override func viewDidLoad() {
        super.viewDidLoad()

      tableView.delegate = self
      tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as! UserCell

      let user = users[indexPath.row]

      cell.nameLabel.text = user["name"]
      cell.hometownLabel.text = user["hometown"]

      return cell
   }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
