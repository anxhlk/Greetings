//
//  DataItemModel.swift
//  Greetings
//
//  Created by Anshul Karande on 2023-12-24.
//

import SwiftUI

///  This is the data model of the messages
///  that will appear in the app
///  it contains a test string and a color
///  moreover it conforms to the identifiable protcol
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
