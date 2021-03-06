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
          "hometown" : "Taipei",
          "color" : "purple"],
         ["name": "James",
          "hometown" : "Taipei",
          "color" : "blue"],
         ["name": "Amber",
          "hometown" : "Berkeley",
          "color": "pink"],
         ["name" : "Lucas",
          "hometown" : "Berkeley",
          "color" : "orange"],
         ["name" : "Tiger",
          "hometown" : "Woodland",
          "color" : "green"]
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

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

       // Get the index path from the cell that was tapped
       let indexPath = tableView.indexPathForSelectedRow

       let user = users[indexPath?.row ?? -1]

       let color = user["color"]
       let name = user["name"]

       // Get in touch with the DetailViewController
       let detailViewController = segue.destination as! DetailViewController
       // Pass on the data to the Detail ViewController by setting it's indexPathRow value
       detailViewController.color = color
       detailViewController.name = name
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
