# color_generator

## Overview
This is a simple Flutter application that displays the text **"Hello There"** in the center of the screen and changes the **background color to a randomly generated color** every time the user taps anywhere on the screen.  
The app also keeps track of the number of taps performed.  

The project follows **Clean Architecture** principles with **Bloc/Cubit state management** and uses **solid_lints** for code quality.

---

## Features
- Display **"Hello There"** in the center of the screen.
- Change **background color** randomly on screen tap.
- Generate **16,777,216 possible colors** using RGB.
- Display the number of times the screen was tapped.
- Smooth **animated color transitions** using `AnimatedContainer` and `AnimatedSwitcher`.
- Clean code following **Clean Architecture**:
  - **Data Layer**: local data source
  - **Domain Layer**: entities, use cases, repositories
  - **Presentation Layer**: Cubit state management, UI
- No external libraries for color generation.
- Fully compatible with **solid_lints**.

---

## Project Structure
lib/
├── core/
│   ├── services/
│   │   └── service_locator.dart       
│   └── utils/
│       └── constants/constants.dart  
├── data/
│   ├── datasources/
│   │   └── base_local_datasource.dart  
│   ├── models/
│   │   └── color_model.dart            
│   └── repositories/
│       └── color_repository.dart       
├── domain/
│   ├── entities/
│   │   └── color_entity.dart           
│   ├── repositories/
│   │   └── base_color_repository.dart  
│   └── usecases/
│       └── generate_random_color_usecase.dart  
├── presentation/
│   ├── controler/
│   │   └── color_cubit/
│   │       ├── color_cubit.dart
│   │       └── color_state.dart
│   └── pages/
│       └── home_page.dart
├── my_app.dart                         
└── main.dart                           




## State Management
- Cubit (Bloc) is used to manage the color state and tap counter.
- The app starts with ColorInitialState (white background and 0 taps).
- Each tap triggers ColorCubit.changeColor(), which updates the color and tap count.

---
## Coding Standards
- Code follows Clean Architecture.
- Uses solid_lints for linting and code quality.
- All public members are documented.

---

## Getting Started

### Prerequisites
- Flutter SDK >= 3.8.1
- Dart >= 3.8.1

---

### Installation
1. Clone the repository:
```bash
git clone [<repository_url>](https://github.com/mahmoudshrief1166/color-generator.git)
cd color_generator //Navigate to the project directory
flutter pub get //Get dependencies
flutter run     //Run the app





