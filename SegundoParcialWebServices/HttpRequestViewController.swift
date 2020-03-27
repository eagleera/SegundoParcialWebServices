//
//  HttpRequestViewController.swift
//  SegundoParcialWebServices
//
//  Created by Noel Aguilera Terrazas on 26/03/20.
//  Copyright © 2020 Daniel Aguilera. All rights reserved.
//

import UIKit
import Alamofire

class HttpRequestViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var teamMemberCollection: UICollectionView!
    var teamMembersArray: [TeamMember]? = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teamMembersArray?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamMemberId", for: indexPath) as? TeamMemberCollectionViewCell
        cell!.teamMemberElement = teamMembersArray?[indexPath.row]
        return cell!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "The Best Team"
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("suh")
        AF.request("http://www.mocky.io/v2/5e7d02bb3500007f8806a298")
        .validate()
            .responseDecodable(of: [TeamMember].self) { (response) in
                guard let teamElements = response.value else {
                    return
                }
                print(teamElements)
                DispatchQueue.main.async {
                    self.teamMembersArray = teamElements
                    self.teamMemberCollection.reloadData()
                }
        }
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
