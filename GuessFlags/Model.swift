//
//  Model.swift
//  GuessFlags
//
//  Created by Юлия Филимонова on 18.06.2022.
//

import Foundation

struct Country {
    var name: String

    static func makeCountryArray() -> [Country] {
        var array = [Country]()
        array += [Country(name: "estonia"), Country(name: "us"), Country(name: "poland"),
                  Country(name: "russia"), Country(name: "uk"), Country(name: "ireland"),
                  Country(name: "france"), Country(name: "monaco"), Country(name: "italy"),
                  Country(name: "germany"), Country(name: "spain"),Country(name: "nigeria")]
        return array
    }
}
