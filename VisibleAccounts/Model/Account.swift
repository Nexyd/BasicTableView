//
//  Account.swift
//  VisibleAccounts
//
//  Created by Daniel Morato on 15/01/2019.
//  Copyright © 2019 dani. All rights reserved.
//

import Foundation

class Account: Codable {
    var accountBalanceInCents: Int?
    var accountCurrency: String?
    var accountId: Int?
    var accountName: String?
    var accountNumber: Int?
    var accountType: String?
    var alias: String?
    var isVisible: Bool?
    var iban: String?
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        accountBalanceInCents = try? container.decode(Int.self, forKey: .accountBalanceInCents)
        accountCurrency = try? container.decode(String.self, forKey: .accountCurrency)
        accountId = try? container.decode(Int.self, forKey: .accountId)
        accountName = try? container.decode(String.self, forKey: .accountName)
        accountNumber = try? container.decode(Int.self,  forKey: .accountNumber)
        accountType = try? container.decode(String.self, forKey: .accountType)
        alias = try? container.decode(String.self, forKey: .alias)
        isVisible = try? container.decode(Bool.self, forKey: .isVisible)
        iban = try? container.decode(String.self, forKey: .iban)
    }

    private enum CodingKeys: String, CodingKey {
        case accountBalanceInCents
        case accountCurrency
        case accountId
        case accountName
        case accountNumber
        case accountType
        case alias
        case isVisible
        case iban
    }
}

class AccountList: Codable {
    var accounts: [Account]
}
