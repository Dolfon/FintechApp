//
//  ProfileInteractor.swift
//  FintechApp
//
//  Created by Rudolf Oganesyan on 13.11.2020.
//  Copyright © 2020 Рудольф О. All rights reserved.
//

import Foundation

protocol ProfileInteractorProtocol {
    var currentTheme: Theme { get }
}

final class ProfileInteractor: ProfileInteractorProtocol {
    
    let themeService: ThemeServiceProtocol
    
    var currentTheme: Theme {
        themeService.currentTheme
    }
    
    init(themeService: ThemeServiceProtocol) {
        self.themeService = themeService
    }
}
