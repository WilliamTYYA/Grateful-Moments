//
//  GratefulMomentsTests.swift
//  GratefulMomentsTests
//
//  Created by Thiha Ye Yint Aung on 11/19/25.
//

import Testing
@testable import GratefulMoments
import Foundation

struct StreakCalculatorTests {
    let streakCalculator = StreakCalculator()
    let now = Date.now
    
    @Test func testCalculations() {
        let days = [-2, -1]
        let expectedStreak = 2
        
        let moments = days.map {
            let date = Calendar.current.date(byAdding: .day, value: $0, to: now)!
            return Moment(title: "", note: "", timestamp: date)
        }
        
        print("Hello, World!")
        let streak = streakCalculator.calculateStreak(for: moments)
        #expect(streak == expectedStreak)
    }
}
