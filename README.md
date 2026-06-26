
<div align="center">

# 🍓 Fruity — Flutter Food Ordering App

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Integrated-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![Dart](https://img.shields.io/badge/Dart-Language-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

> A modern, user-friendly **Food Ordering Mobile Application** built with **Flutter & Firebase**.  
> Browse menus, add to cart, place orders — all in one sleek experience. 🚀

<br/>

![App Banner](assets/flutter_01.png)

</div>

---

## 📋 Table of Contents

- [✨ Features](#-features)
- [📱 Screenshots](#-screenshots)
- [🛠️ Tech Stack](#️-tech-stack)
- [⚙️ Getting Started](#️-getting-started)
- [📁 Project Structure](#-project-structure)
- [🚀 Running the App](#-running-the-app)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔐 **User Authentication** | Secure Sign In & Sign Up via Firebase Auth |
| 🏠 **Home Screen** | Browse featured food items and categories |
| 🔍 **Search** | Quickly find your favorite food items |
| 📄 **Product Details** | View descriptions, ingredients & pricing |
| 🛒 **Shopping Cart** | Add items, review order & checkout |
| ❤️ **Wishlist** | Save your favorite items for later |
| ⭐ **Ratings & Reviews** | Rate and review food items |
| 👤 **User Profile** | Manage personal info and account details |
| 🔔 **Notifications** | Real-time updates about your orders |
| 🎉 **Welcome Screen** | Smooth and engaging onboarding experience |
| ❓ **FAQ Section** | Access help and support anytime |


## 🛠️ Tech Stack

- **Frontend:** Flutter (Dart)
- **Backend / Auth / DB:** Firebase (Firestore, Firebase Auth)
- **State Management:** *(e.g., Provider / GetX / Riverpod — update this)*
- **Platform Support:** Android 

---

## ⚙️ Getting Started

### Prerequisites

Make sure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) `>=3.0.0`
- [Dart SDK](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/)
- A Firebase project set up at [console.firebase.google.com](https://console.firebase.google.com)

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/Sumaira-AI/flutter-food-delivery-android-app.git

# 2. Navigate into the project
cd flutter-food-delivery-android-app

# 3. Install dependencies
flutter pub get

# 4. Add your Firebase config files:
#    - android/app/google-services.json  (Android)
#    - ios/Runner/GoogleService-Info.plist  (iOS)

# 5. Run the app
flutter run
```

---

## 📁 Project Structure

```
my_app/
├── android/          # Android native files
├── ios/              # iOS native files
├── lib/              # Main Dart source code
│   ├── models/       # Data models
│   ├── screens/      # UI screens
│   ├── widgets/      # Reusable widgets
│   └── main.dart     # App entry point
├── assets/           # Images, fonts, icons
├── test/             # Unit & widget tests
└── pubspec.yaml      # Project dependencies
```

---

## 🚀 Running the App

```bash
# Run in debug mode
flutter run

# Run on a specific device
flutter run -d chrome        # Web
flutter run -d android       # Android emulator/device
flutter run -d ios           # iOS simulator

```

---

## 🤝 Contributing

Contributions are welcome! Here's how:

1. **Fork** the repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -m "Add: your feature"`
4. Push to branch: `git push origin feature/your-feature-name`
5. Open a **Pull Request**

---

---

<div align="center">

Made with ❤️ using Flutter

⭐ **Star this repo if you found it helpful!** ⭐

</div>
