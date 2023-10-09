//
//  TestDrivenDevelopmentAppTests.swift
//  TestDrivenDevelopmentAppTests
//
//  Created by ahdivio mendes on 09/10/23.
//

import XCTest
@testable import TestDrivenDevelopmentApp

final class TestDrivenDevelopmentAppTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    try super.setUpWithError()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    try super.tearDownWithError()
  }
  
  
  func testInitMovieWithTitle() throws {
    let movie = Movie(title: "Dummy name")
    XCTAssertNotNil(movie)
    XCTAssertEqual(movie.title, "Dummy name")
  }
  
  
  func testInitSetMoviewTitleAndReleaseDate() {
    let movie = Movie(title: "Some comedy", ReleaseDate: "2021")
    XCTAssertNotNil(movie)
    XCTAssertEqual(movie.ReleaseDate, "2021")
  }
  
}
