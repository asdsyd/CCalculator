# CCalculator
![CCalculator](https://github.com/user-attachments/assets/38f1feb1-763d-440b-93e6-6a719a5da4c8)


A simple iOS calculator app built using SwiftUI for the user interface and an Objective-C framework for core arithmetic and trigonometric calculations. The app supports basic arithmetic operations (addition, subtraction, multiplication, and division) as well as trigonometric functions (sine, cosine, and tangent). It adapts seamlessly to both portrait and landscape orientations with dynamic button sizing.

## Project Description

**CCalculator** demonstrates how to integrate Swift and Objective-C in a single project. The main application is built with SwiftUI, featuring a responsive layout that adjusts to different screen sizes and orientations. The underlying calculator logic—handling arithmetic operations and trigonometric functions—is encapsulated within an Objective-C framework. This separation of concerns not only highlights interoperability between Swift and Objective-C but also provides a clear modular structure for the project.

## Features

- **Arithmetic Operations:** Perform addition, subtraction, multiplication, and division.
- **Trigonometric Functions:** Calculate sine, cosine, and tangent values (input is assumed to be in radians).
- **Responsive UI:** Uses SwiftUI’s `GeometryReader` and `LazyVGrid` to ensure a consistent layout in both portrait and landscape modes.
- **Clear Functionality:** A dedicated "clr" button to reset the display and stored operands, allowing for a fresh start.
- **Modular Design:** Core logic implemented in an Objective-C framework, demonstrating effective language integration.

## Project Structure

```
CCalculator/                   # Main project folder
├── CalculatorLogic/            # Objective-C framework containing core calculator logic
│   ├── Calculator.h            # Public header exposing calculator methods
│   ├── Calculator.m            # Implementation file for calculator methods
│   └── ...                     # Framework configuration files
├── CCalculator/                # SwiftUI application folder
│   ├── ContentView.swift       # Main SwiftUI view with calculator UI
│   └── ...                     # Additional Swift files and assets
└── README.md                   # Project description and instructions
```

## Requirements

- **Xcode:** 13 or later (with SwiftUI support)
- **iOS:** 14.0 or later (recommended)
- **macOS:** For development

## Installation and Setup

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/Calculator3.git
   ```

2. **Open the Project:**
   - Navigate to the project folder and open `CCalculator.xcodeproj` with Xcode.

3. **Build and Run:**
   - Select your target device or simulator.
   - Build the project using **Command+B**.
   - Run the app using **Command+R**.

## Usage

- **Entering Numbers:** Tap on the numeric buttons to enter your values.
- **Performing Operations:**  
  - Tap one of the arithmetic operator buttons (`+`, `-`, `*`, `/`) after entering the first number.
  - Enter the second number and tap the equals (`=`) button to compute the result.
- **Trigonometric Calculations:**  
  - Enter an angle in radians.
  - Tap the `sin`, `cos`, or `tan` button to calculate the respective trigonometric function.
- **Clearing the Display:**  
  - Tap the `clr` button to reset the display and clear any stored data, preparing the app for a new calculation.

## Future Enhancements

- **Enhanced State Management:** Improve the calculator’s logic to support sequential and chained calculations.
- **Error Handling:** Add validations to handle invalid inputs and edge cases, such as division by zero.
- **UI Improvements:** Refine the user interface for a more polished and modern look.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, please contact me on linkedin. Thank you! 
