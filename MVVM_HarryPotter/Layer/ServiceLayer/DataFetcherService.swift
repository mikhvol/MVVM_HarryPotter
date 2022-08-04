//
//  DataFetcherService.swift
//  MVVM_HarryPotter
//
//  Created by worker on 04.08.2022.
//

import Foundation

class DataFetcherService {
    
    private var networkDataFetcher: DataFetcher
    
    init(networkDataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.networkDataFetcher = networkDataFetcher
    }
    
    func fetchCharactersOfHarryPotter(complition: @escaping ([CharacterHP]?) -> Void) {
        let urlCharactersHarryPotter = "http://hp-api.herokuapp.com/api/characters"
        self.networkDataFetcher.fetchGenericJSONData(urlString: urlCharactersHarryPotter, response: complition)
    }
}
