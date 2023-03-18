//
//  ViewController.swift
//  IOS_LandMarkBook_Project
//
//  Created by Enes Talha Yılmaz on 2.03.2023.
//

import UIKit

class ViewController : UIViewController ,UITableViewDelegate
,UITableViewDataSource{
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkName = ""
    @IBOutlet weak var tvMain: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tvMain.delegate = self
        tvMain.dataSource = self
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Taj Mahal")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        
        
        landmarkImages.append(UIImage(named: "colosseum.jpeg")!)
        landmarkImages.append(UIImage(named: "greatWall.jpeg")!)
        landmarkImages.append(UIImage(named: "tajmahal.jpeg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpeg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpeg")!)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text=landmarkNames[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! toDetailsVC
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            destinationVC.selectedLandmark = chosenLandmarkName
            
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


}

