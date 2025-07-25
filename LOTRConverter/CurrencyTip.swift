//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Léo Moille on 21/07/2025.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency screen.")
    var image: Image? = Image(systemName: "hand.tap.fill")
}
