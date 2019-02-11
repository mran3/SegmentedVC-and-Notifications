//
//  SimpleVC1.swift
//  SegmentedViewControllers
//
//  Created by troquer on 20/01/2019.
//  Copyright © 2019 acvc. All rights reserved.
//

import UIKit

class SimpleVC1: UIViewController {

    @IBOutlet weak var calculateDaysBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded Child VC1")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func daysToBtnPressed(_ sender: UIButton) {
        let currentDate = Date()
        calculateDays(from: currentDate)
    }
    func calculateDays(from:Date) -> Int {
        print("Calculating days")
        let birthDay = "2019-09-13"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard  let formatedBirthDay = dateFormatter.date(from: birthDay) else {
            return -1
        }
        let diffInDays = Calendar.current.dateComponents([.day], from: from, to: formatedBirthDay)
        print(diffInDays.day!)
        return diffInDays.day!
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
