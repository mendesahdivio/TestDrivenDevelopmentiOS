//
//  Movie.swift
//  TestDrivenDevelopmentApp
//
//  Created by ahdivio mendes on 09/10/23.
//

import Foundation

struct Movie {
  let title: String
  let ReleaseDate: String?
  
  init(title: String, ReleaseDate: String? = nil) {
    self.title = title
    self.ReleaseDate = ReleaseDate
  }
}
