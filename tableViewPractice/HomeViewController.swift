//
//  HomeViewController.swift
//  tableViewPractice
//
//  Created by Ellen Yang on 4/28/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UIWebViewDelegate, UITableViewDelegate {

   @IBOutlet weak var tableView: UITableView!
   
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
