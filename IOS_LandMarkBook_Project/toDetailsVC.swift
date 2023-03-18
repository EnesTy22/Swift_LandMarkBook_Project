//
//  toDetailsVC.swift
//  IOS_LandMarkBook_Project
//
//  Created by Enes Talha Yılmaz on 2.03.2023.
//

import UIKit

class toDetailsVC: UIViewController {

    @IBOutlet weak var ivLandmark: UIImageView!
    @IBOutlet weak var lblLandmark: UILabel!
    var selectedLandmark = ""
    var selectedLandmarkImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        lblLandmark.text = selectedLandmark
        ivLandmark.image = selectedLandmarkImage
        // Do any additional setup after loading the view.
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
