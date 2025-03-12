//
//  ContentView.swift
//  CCalculator
//
//  Created by Asad Sayeed on 12/03/25.
//

import SwiftUI
import CalculatorLogic

struct ContentView: View {
    @State private var display: String = "0"
    @State private var firstOperand: String = ""
    @State private var currentOperator: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 10) {
                // Display Area
                Text(display)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    .background(Color(.systemGray6))
                
                // Calculate rows and columns information
                // We have 20 buttons, arranged in 4 columns and 5 rows.
                let columnsCount: CGFloat = 4
                let rowsCount: CGFloat = 5
                
                // Spacing settings
                let spacing: CGFloat = 10
                let totalHorizontalSpacing = spacing * (columnsCount + 1)
                let totalVerticalSpacing = spacing * (rowsCount + 1)
                
                // Assume display area occupies roughly 80 points in height
                let displayHeight: CGFloat = 80
                
                // Compute available width and height for the buttons
                let availableWidth = geometry.size.width - totalHorizontalSpacing
                let availableHeight = geometry.size.height - displayHeight - totalVerticalSpacing
                
                // Determine button size based on the smaller dimension
                let buttonSize = min(availableWidth / columnsCount, availableHeight / rowsCount)
                
                // Define grid columns
                let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: Int(columnsCount))
                
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(buttons, id: \.self) { button in
                        Button(action: {
                            buttonTapped(button)
                        }) {
                            Text(button)
                                .font(.title)
                                .frame(width: buttonSize, height: buttonSize)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(spacing)
                
                Spacer()
            }
        }
    }
    
    // List of buttons (4 columns x 5 rows)
    private var buttons: [String] {
        ["7", "8", "9", "/",
         "4", "5", "6", "*",
         "1", "2", "3", "-",
         "0", ".", "=", "+",
         "sin", "cos", "tan", "clr"]
    }
    
    func buttonTapped(_ title: String) {
        if title == "clr" {
            // Clear the display and stored operands/operators.
            display = "0"
            firstOperand = ""
            currentOperator = ""
        } else if ["+", "-", "*", "/"].contains(title) {
            // Store the first operand and the operator.
            firstOperand = display
            currentOperator = title
            display = "0"
        } else if ["sin", "cos", "tan"].contains(title) {
            // Convert display value to Double (assumed to be in radians)
            guard let operand = Double(display) else { return }
            var result: Double = 0.0
            
            switch title {
            case "sin":
                result = Calculator.sin(operand)
            case "cos":
                result = Calculator.cos(operand)
            case "tan":
                result = Calculator.tan(operand)
            default:
                break
            }
            display = String(result)
        } else if title == "=" {
            // Evaluate the arithmetic expression.
            guard let operand1 = Double(firstOperand),
                  let operand2 = Double(display) else { return }
            
            var result: Double = 0.0
            
            switch currentOperator {
            case "+":
                result = Calculator.add(operand1, second: operand2)
            case "-":
                result = Calculator.subtract(operand1, second: operand2)
            case "*":
                result = Calculator.multiply(operand1, second: operand2)
            case "/":
                result = Calculator.divide(operand1, second: operand2)
            default:
                break
            }
            display = String(result)
        } else {
            // Append number or decimal point.
            if display == "0" {
                display = title
            } else {
                display += title
            }
        }
    }
}


#Preview {
    ContentView()
}
