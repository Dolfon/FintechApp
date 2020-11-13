//
//  ConversationCellModel.swift
//  FintechApp
//
//  Created by Rudolf Oganesyan on 25.09.2020.
//  Copyright © 2020 Рудольф О. All rights reserved.
//

import Foundation

struct ConversationCellModel {
    
    static private let dateFormatter = DateFormatter()
    
    let name: String
    let message: String
    let date: String
    
    init(channel: Channel) {
        self.name = channel.name
        self.message = channel.lastMessage ?? ""
        self.date = ConversationCellModel.getFormattedDateStringFrom(channel.lastActivity)
    }
    
    static private func getFormattedDateStringFrom(_ date: Date?) -> String {
        guard let date = date else { return "" }
        let calendar = Calendar.current
        if calendar.isDateInToday(date) {
            ConversationCellModel.dateFormatter.dateFormat = "HH:mm"
        } else {
            ConversationCellModel.dateFormatter.dateFormat = "dd MMM"
        }
        let dateString = ConversationCellModel.dateFormatter.string(from: date)
        return dateString
    }
}