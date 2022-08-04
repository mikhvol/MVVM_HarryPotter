//
//  StudentsScreenViewModel.swift
//  MVVM_HarryPotter
//
//  Created by worker on 05.08.2022.
//

import Foundation
import UIKit

struct StudentsScreenViewModel {
    
    //External dependencies
    var dataFetcherService = DataFetcherService()
    
    func getCharachters(complition: @escaping ([CharacterHP]?)->()) {
        self.dataFetcherService.fetchCharactersOfHarryPotter { (charachtersHP) in
            guard let charachtersHP = charachtersHP else {
                complition(nil)
                return
            }
            
            DispatchQueue.global().async {
                complition(charachtersHP)
            }
        }
    }
}
