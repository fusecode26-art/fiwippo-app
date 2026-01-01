# 📱 Flutter GetX Modular App

A scalable Flutter application built using **GetX** and a **feature-based architecture**, designed for clean code, modularity, and long-term maintainability.

---

## 🚀 Features

This application is divided into independent feature modules:

- 🎟️ Active Tickets
- 🤝 Affiliate Dashboard
- 🔐 Authentication
- 🤖 Chatbot
- 🔒 Data & Privacy
- 🎉 Events
- 🆘 Help & Support
- 🏠 Home
- 🌍 Language & Currency
- 🔔 Notifications
- 🚀 Onboarding
- 🧾 Order History & Invoice
- 🛒 Shop
- 💦 Splash
- 👤 User Profile
- 💰 Wallet

Each feature is isolated with its own views, controllers, bindings, and models.

---

## 🧱 Project Architecture

The project follows a **Feature-First architecture** powered by **GetX**.

lib/
│
├── core/
│ ├── constants/
│ ├── network/
│ ├── routes/
│ ├── theme/
│ └── utils/
│
├── features/
│ ├── active_tickets/
│ ├── affiliate_dashboard/
│ ├── auth/
│ ├── chatbot/
│ ├── data_and_privacy/
│ ├── events/
│ ├── help_and_support/
│ ├── home/
│ ├── language_and_currency/
│ ├── notifications/
│ ├── onboarding/
│ ├── order_history_invoice/
│ ├── shop/
│ ├── splash/
│ ├── user_profile/
│ └── wallet/
│
└── main.dart



---

## 🧠 State Management & Routing

- **GetX**
  - Reactive state management (`Rx`)
  - Dependency injection using Bindings
  - Named routing with middleware support
  - Lightweight and high performance

---

## 🛠 Tech Stack

| Technology | Description |
|----------|-------------|
| Flutter | UI framework |
| GetX | State management, routing, DI |
| Dart | Programming language |
| REST API | Backend integration |
| SharedPreferences / Hive | Local storage |
| Firebase (optional) | Notifications & services |

---

## ▶️ Getting Started

### 1️⃣ Prerequisites

- Flutter SDK `>= 3.x`
- Dart SDK `>= 3.x`
- Android Studio / VS Code
- Xcode (for iOS)

---




