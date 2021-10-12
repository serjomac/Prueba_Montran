//
//  ViewController.swift
//  pruebamontrant
//
//  Created by Jonathan Macias on 12/10/21.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // MARK: - OULETS
    @IBOutlet weak var UniversityTable: UITableView!
    
    var universities_list: [Universities]? = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.UniversityTable.delegate = self
        self.UniversityTable.dataSource = self
        getUniversities()
    }
    
    func getUniversities() {
        ApiManager.GetUniversities { universtiesResponse, error in
            guard let resUniversities = universtiesResponse else {
                print("ERROR REQEUST: ", error)
                return
            }
            print("UNIVERSIDADES", resUniversities.count)
            self.universities_list = resUniversities
            self.UniversityTable.reloadData()
        }
    }
 
    
    
    
    // MARK:- DELEGADOS Y PROTOCOLOS
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("SE SELECCIONÓ LA FILA \(indexPath.row)")
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let UniversityDetailVC = storyboard.instantiateViewController(identifier: "universityDetailVC")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universities_list?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UniversitiyTableViewCell = self.UniversityTable.dequeueReusableCell(withIdentifier: "universityCell") as! UniversitiyTableViewCell
        guard let universitiesList = self.universities_list else {
            return cell
        }
        cell.UniversityTitle.text = universitiesList[indexPath.row].name
        cell.UniversityWebpage.text = universitiesList[indexPath.row].web_pages?[0] ?? ""
        return cell
    }


}

