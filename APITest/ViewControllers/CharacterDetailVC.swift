//
//  CharacterDetailVC.swift
//  APITest
//
//  Created by Admin on 12/19/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CharacterDetailVC: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var skinColorLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    
    var characterDetailVM = CharacterDetailVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = characterDetailVM.character?.name
         heightLabel.text = characterDetailVM.character?.height
         massLabel.text = characterDetailVM.character?.mass
         hairColorLabel.text = characterDetailVM.character?.hair_color
         skinColorLabel.text = characterDetailVM.character?.skin_color
         eyeColorLabel.text = characterDetailVM.character?.eye_color
         birthYearLabel.text = characterDetailVM.character?.birth_year
        genderLabel.text = characterDetailVM.character?.gender
        
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
