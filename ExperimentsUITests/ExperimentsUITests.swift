//
//  ExperimentsUITests.swift
//  ExperimentsUITests
//
//  Created by Kaung Myat Thet Mon on 19/4/23.
//

import XCTest

final class ExperimentsUITests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // UI tests must launch the application that they test.
    
    let app = XCUIApplication()
    app.resetAuthorizationStatus(for: .userTracking)
    app.launch()
    
    let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    let permissionAlert = springboard.alerts["Allow “Experiments” to track your activity across other companies’ apps and websites?"]
    let alertExists = permissionAlert.waitForExistence(timeout: 10)
    let notAllowButton = permissionAlert.buttons["Ask App Not to Track"]
    let allowButton = permissionAlert.buttons["Allow"]
    notAllowButton.tap()
    
  }
}
