//
//  DetailViewController.swift
//  tableViewPractice
//
//  Created by Ellen Yang on 4/29/21.
//

import UIKit

class DetailViewController: UIViewController {

   @IBOutlet weak var label: UILabel!

   var color: String!
   var name: String!
   
   override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      label.text = ("\(name ?? "no name") likes \(color ?? "black").")
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
