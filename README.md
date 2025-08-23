# Binorix Patient

<div align="center">
  <img src="assets/images/main_top.png" alt="Binorix Patient Logo" width="200"/>
  
  **A Flutter Framework based Mobile Application for Patients to manage their Digital Medical Prescriptions**
  
  [![Flutter](https://img.shields.io/badge/Flutter-3.9.0-blue.svg)](https://flutter.dev/)
  [![Dart](https://img.shields.io/badge/Dart-3.9.0-blue.svg)](https://dart.dev/)
  [![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-lightgrey.svg)](https://flutter.dev/docs/deployment)
</div>

## 📱 Application Overview

Binorix Patient is a comprehensive mobile application designed to help patients manage their digital medical prescriptions, appointments, and health records. Built with Flutter, it provides a cross-platform solution that works seamlessly on Android, iOS, web, and desktop platforms.

## ✨ Key Features

- 🔐 **Secure Authentication** - JWT-based login and registration system
- 📋 **Digital Prescription Management** - Store and organize medical prescriptions
- 👤 **User Profile Management** - Comprehensive patient profile system
- 📱 **Responsive Design** - Optimized for both mobile and desktop experiences
- 🔒 **Secure Storage** - Flutter secure storage for sensitive data
- 🌐 **WebSocket Support** - Real-time communication capabilities
- 🎨 **Modern UI/UX** - Material Design with custom theming

## 🖼️ UI Showcase

### Welcome Screen

![Welcome Screen](assets/images/welcome_screen.png)
_The welcoming landing page with login and signup options_

### Login Screen

![Login Screen](assets/images/login_screen.png)
_Secure authentication interface with modern design_

### Registration Screen

![Registration Screen](assets/images/registration_screen.png)
_User registration form with validation_

### Profile Screen

![Profile Screen](assets/images/profile_screen.png)
_Comprehensive patient profile management_

### Main Dashboard

![Dashboard](assets/images/dashboard_screen.png)
_Main application dashboard with navigation_

### Prescription View

![Prescription](assets/images/prescription_screen.png)
_Digital prescription display and management_

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.9.0 or higher)
- Dart SDK (3.9.0 or higher)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/binorix_patient.git
   cd binorix_patient
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Building for Production

**Android APK:**

```bash
flutter build apk --release
```

**iOS:**

```bash
flutter build ios --release
```

**Web:**

```bash
flutter build web --release
```

## 🏗️ Project Structure

```
lib/
├── Auth/                    # Authentication utilities
│   └── jwt.dart           # JWT token handling
├── BottomNavigationBar/    # Navigation components
│   └── bottomnavigationbar.dart
├── components/             # Shared UI components
│   ├── background.dart     # Background styling
│   ├── login_page.dart     # Login page components
│   └── registration_page.dart
├── Login/                  # Login screen
│   ├── components/
│   │   ├── login_form.dart
│   │   └── login_screen_top_image.dart
│   └── login_screen.dart
├── Profile/                # Profile management
│   ├── components/
│   │   ├── profile_avatar.dart
│   │   ├── profile_info_card.dart
│   │   └── profile_info_row.dart
│   └── profile_screen.dart
├── Signup/                 # Registration screen
│   ├── components/
│   │   ├── signup_form.dart
│   │   └── sign_up_top_image.dart
│   └── signup_screen.dart
├── welcome/                # Welcome screen
│   ├── components/
│   │   ├── login_signup_btn.dart
│   │   └── welcome_image.dart
│   └── welcome_screen.dart
├── constants.dart          # Application constants
├── main.dart              # Application entry point
├── responsive.dart         # Responsive design utilities
└── theme/                 # Application theming
    └── theme.dart
```

## 📦 Dependencies

### Core Dependencies

- **flutter**: Flutter framework
- **cupertino_icons**: iOS-style icons
- **flutter_svg**: SVG image support
- **web_socket_channel**: Real-time communication
- **http**: HTTP client for API calls
- **flutter_secure_storage**: Secure data storage
- **jwt_decoder**: JWT token decoding

### Development Dependencies

- **flutter_test**: Flutter testing framework
- **flutter_lints**: Code quality and linting rules

## 🎨 Design System

The application follows Material Design principles with:

- **Responsive Layout**: Adapts to different screen sizes
- **Custom Theming**: Consistent color scheme and typography
- **Component Library**: Reusable UI components
- **Accessibility**: Screen reader support and high contrast

## 🔧 Configuration

### Environment Setup

1. Ensure Flutter SDK is properly installed
2. Configure platform-specific settings in `android/` and `ios/` directories
3. Set up signing configurations for production builds

### API Configuration

- Configure backend API endpoints in the constants file
- Set up JWT token management
- Configure WebSocket connections

## 🧪 Testing

Run the test suite:

```bash
flutter test
```

## 📱 Platform Support

- ✅ **Android** - Minimum SDK: 21
- ✅ **iOS** - Minimum version: 11.0
- ✅ **Web** - Modern browsers
- ✅ **Desktop** - Windows, macOS, Linux

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- **Lead Developer** - [Your Name]
- **UI/UX Designer** - [Designer Name]
- **Backend Developer** - [Backend Developer Name]

## 📞 Support

For support and questions:

- 📧 Email: support@binorix.com
- 💬 Discord: [Join our community](https://discord.gg/binorix)
- 📖 Documentation: [Wiki](https://github.com/yourusername/binorix_patient/wiki)

## 🔮 Roadmap

- [ ] **Prescription OCR** - Scan and digitize paper prescriptions
- [ ] **Medication Reminders** - Push notifications for medication schedules
- [ ] **Health Analytics** - Track health metrics and trends
- [ ] **Telemedicine Integration** - Video consultations with healthcare providers
- [ ] **Emergency Contacts** - Quick access to emergency medical information
- [ ] **Offline Mode** - Access to critical information without internet

---

<div align="center">
  <p>Made with ❤️ by the Binorix Team</p>
  <p>Built with Flutter & Dart</p>
</div>
