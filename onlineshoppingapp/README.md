* **Title:** ZenoShop
* **Tagline:** Smart Shopping at Your Fingertips
* **One-liner:** ZenoShop is a Flutter-based e-commerce app offering a seamless onboarding flow, user authentication, and a delightful shopping experience with a modern, responsive design.

## Introduction :

ZenoShop is an e-commerce mobile application developed with Flutter. The goal is to create a modern shopping platform that offers users a smooth onboarding journey and secure authentication, laying the foundation for a complete online shopping experience.

The app aims to:

* Provide a simple and engaging introduction through splash and onboarding screens.
* Ensure quick and secure login options for users.
* Establish a scalable structure for future shopping features like product browsing, cart, and checkout.

## Features (Current Progress) :

* 🚀 **Splash Screen**: Displays app logo and name for 3 seconds before onboarding.
* 📖 **Onboarding Flow**: 3 informative screens using PageView:

  1. *Welcome to ZenoShop*
  2. *Easy to Buy*
  3. *Wonderful User Experience*
* 🔐 **Login Screen**: Email/username & password fields with social logins (Google, Apple, Facebook).
* 🎨 **Consistent Theme**: Polished pink design and responsive layout.

## Tech Stack :

* **Framework:** Flutter (Dart)
* **State Management:** Cubit / Bloc
* **Packages:** flutter\_screenutil, firebase\_auth (planned)
* **IDE:** Android Studio, VS Code

## Installation & Setup :

1. Clone the repo:

   ```bash
   git clone https://github.com/Zeneb-Tekarri/Flutter-Application/tree/main/onlineshoppingapp.git
   cd onlineshoppingapp.git

2. Install dependencies:

   ```bash
   flutter pub get
  
3. Run the app:

   ```bash
   flutter run

## Challenges & Learnings :

* Learned to implement multi-screen onboarding with PageView and navigation.
* Designed a consistent responsive UI using flutter\_screenutil.
* Implemented splash screen with timed navigation.
* Set up structured folder architecture for scalability.

## Future Improvements :

* Connect authentication with Firebase backend.
* Build product catalog UI.
* Implement shopping cart and checkout system.
* Add user profiles and order tracking.

## Conclusion :

The first milestone of ZenoShop is complete: a splash screen, onboarding flow, and login screen are functional with a clean design. The next steps will focus on backend integration and shopping features. Contributions and feedback are welcome!

