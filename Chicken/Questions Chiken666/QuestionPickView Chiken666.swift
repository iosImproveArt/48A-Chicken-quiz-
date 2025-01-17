//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewChiken666: View {
    
    
    var isLoggedIn: Bool = true
    var currentTemperature: Double = 22.5
    var favoriteColors: [String] = ["Blue", "Green", "Purple"]

    // Функції
    func greetUser(name: String) -> String {
        return "Hello, \(name)! Welcome to the app."
    }

    func calculateSquare(of number: Int) -> Int {
        return number * number
    }
    var hwrfnxcjerf = "wrfcwrf"

    func fetchCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: Date())
    }

    func findMaximum(numbers: [Int]) -> Int? {
        return numbers.max()
    }

    func isPrime(_ number: Int) -> Bool {
        guard number > 1 else { return false }
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }

    
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium, color: .hex("FFFFFF"))
            
            VStack(spacing: isSE ? 20: 60) {
                NavigationLink {
                    QuestionViewChiken666(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewChiken666(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewChiken666(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewChiken666(showLoading: false, selectedTab: .quiz)
}
