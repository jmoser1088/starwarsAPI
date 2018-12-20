//
//  CharacterTableVC.swift
//  APITest
//
//  Created by Admin on 12/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CharacterTableVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var charactersTable: UITableView!
    
    // MARK: - Properties
    let characterTableVM = CharacterTableVM()  //declaring it here means you can reference it anyone in our CharacterTableVC by adding it before the viewDiDLoad function 
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        characterTableVM.fetchCharacters() {
            () in
            DispatchQueue.main.sync {
                self.charactersTable.reloadData()
            }
            
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.CharacterDetailSegue {
            if let characterDetailVC = segue.destination as? CharacterDetailVC {
            characterDetailVC.characterDetailVM.character = characterTableVM.characters[charactersTable.indexPathForSelectedRow?.row ?? 0]
            }
        }
    }

}

extension CharacterTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterTableVM.characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let characterCell = tableView.dequeueReusableCell(withIdentifier: Constants.characterCell, for: indexPath) as? CharacterTableViewCell else {
            return UITableViewCell()
        }
        characterCell.characterName?.text = characterTableVM.characters[indexPath.row].name
        return  characterCell
    }
    
}
