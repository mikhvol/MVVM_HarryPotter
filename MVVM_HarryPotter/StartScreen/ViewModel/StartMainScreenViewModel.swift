//
//  StartMainScreenViewModel.swift
//  MVVM_HarryPotter
//
//  Created by worker on 12.08.2022.
//

import Foundation

struct StartMainScreenViewModel {
    
    //External dependencies
    var dataFetcherService = DataFetcherService()
    
    func getCharachters(complition: @escaping ([CharacterHP]?)->()) {
        self.dataFetcherService.fetchCharactersOfHarryPotter { (charachtersHP) in
            guard let charachtersHP = charachtersHP else {
                complition(nil)
                return
            }
            
            DispatchQueue.main.async {
                complition(charachtersHP)
            }
        }
    }
}
