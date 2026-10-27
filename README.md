<div align="center">

# Move On

**A cross-platform fitness & training companion built with Flutter and Dart.**

Discover workouts, follow expert coaches, track your daily activity, and chat with your trainer, all in one app.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Android%20%7C%20iOS-FF8C00?style=for-the-badge)](#)

<img src="assets/1.png" width="220" alt="Move On splash screen" />

</div>

---

## Table of Contents

1. [Overview](#overview)
2. [Features](#features)
3. [App Walkthrough](#app-walkthrough)
4. [Design System](#design-system)
5. [Tech Stack](#tech-stack)
6. [Getting Started](#getting-started)
7. [Screenshots Gallery](#screenshots-gallery)
8. [Possible Next Steps](#possible-next-steps)
9. [Author](#author)

---

## Overview

**Move On** is a mobile fitness application that brings training, coaching, nutrition tracking and communication into a single, focused experience. A new user signs up in three short steps, lands on a discovery-first home screen, and can save favorite workouts and coaches, follow a progress plan, monitor daily activity, and message a trainer directly.

The interface is built around a bold orange brand color on a clean light canvas, with pill-shaped actions and compact info chips (duration, calories, rating, price) that make content easy to scan.

---

## Features

### Authentication & Onboarding
- Branded splash screen with the Move On logo mark on a pure black canvas.
- Email and password login with a "Forget password" shortcut.
- Password recovery by phone: enter a phone number, receive an SMS code, verify it, then set a new password.
- Three-step sign up that keeps every screen short and focused:
  1. Email, password and repeat password.
  2. First name, second name and gender.
  3. Age, weight (kg) and height (cm).

### Home & Discovery
- Search bar at the top of the home screen.
- "Join Premium" banner promoting statistics, advice and personal trainers by monthly subscription.
- **Popular Training** list with level, duration and calories.
- **Popular Coaches** cards with rating, specialty and hourly rate.
- **Fitness Schools** section with circular logos.
- "See all" screens for the full list of trainings and the full list of coaches.

### Favorites
- Segmented control to switch between **Trainers** and **Trainings**.
- Filled heart icon marks saved items, consistent with the cards used in the catalog screens.

### Training Dashboard
- Welcome header with the user's avatar.
- Daily activity tiles: calories, steps, weight and water intake.
- Progress plan bar (for example, 75% complete) with a "Week 3 / Day 1" workout card and a play button.
- Daily food section with a ring chart for protein, carbs and fat.

### Chat
- Conversation list with avatar, last message preview, time and unread badge.
- Search field with voice icon.

### Profile & Settings
- Profile card showing a masked phone number, age, height and weight.
- Quick access tiles: subscription, notification, support and payment.
- Notification bottom sheet with toggles for SMS, push notifications and email newsletter.
- Log out confirmation dialog to prevent accidental sign out.

### Navigation
A persistent bottom tab bar gives one-tap access to the five main areas: **Main, Favorites, Training, Chat, Account**.

---

## App Walkthrough

| Stage | What the user does | Screens |
| --- | --- | --- |
| 1. Launch | Sees the brand splash | Splash |
| 2. Access | Logs in, or recovers a forgotten password via phone verification | Login, Phone Number, Enter Code, Change Password |
| 3. Join | Creates an account in three steps | Sign Up (x3) |
| 4. Explore | Browses popular trainings, coaches and fitness schools | Home, All Trainings, All Coaches |
| 5. Save | Bookmarks favorite trainers and trainings | Favorites |
| 6. Train | Follows the plan and tracks daily activity and nutrition | Training Dashboard |
| 7. Connect | Messages coaches and community | Chats |
| 8. Manage | Edits notification settings, support, payment, and logs out | Profile, Notification, Log out dialog |

---

## Design System

| Element | Choice |
| --- | --- |
| Brand color | Vivid orange (`#FF9800` family) used for primary actions, active tab, hearts, badges and chips |
| Canvas | Light grey background with white cards for content, pure black for the splash screen |
| Shape language | Pill-shaped buttons, rounded input fields, large rounded cards and circular avatars |
| Typography | Clean sans-serif (Roboto-style) with bold headings and soft grey helper text |
| Info chips | Small rounded tags for duration, calories, rating and price |
| Feedback | Bottom sheet for settings, centered dialog for destructive actions |

---

## Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **Targets:** Android and iOS
- **UI:** Material components with custom styling (orange theme, pill buttons, rounded cards)

---

## Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (stable channel)
- Android Studio or VS Code with the Flutter and Dart extensions
- An Android emulator, iOS simulator, or a physical device

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/malakashraf17/fitness-app.git

# 2. Enter the project folder
cd fitness-app

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

### Build a release version

```bash
# Android
flutter build apk --release

# iOS (on macOS)
flutter build ios --release
```

---

## Screenshots Gallery

### Onboarding & Authentication

| Splash | Login | Phone Number | Enter Code | Change Password |
| :---: | :---: | :---: | :---: | :---: |
| <img src="assets/1.png" width="150" /> | <img src="assets/2.png" width="150" /> | <img src="assets/3.png" width="150" /> | <img src="assets/4.png" width="150" /> | <img src="assets/5.png" width="150" /> |

### Sign Up

| Step 1: Account | Step 2: Identity | Step 3: Body metrics |
| :---: | :---: | :---: |
| <img src="assets/6.png" width="180" /> | <img src="assets/7.png" width="180" /> | <img src="assets/8.png" width="180" /> |

### Home, Trainings & Coaches

| Home | All Trainings | All Coaches |
| :---: | :---: | :---: |
| <img src="assets/9.png" width="150" /> | <img src="assets/11.png" width="180" /> | <img src="assets/12.png" width="180" /> |

### Favorites

| Trainers | Trainings |
| :---: | :---: |
| <img src="assets/13.png" width="180" /> | <img src="assets/14.png" width="180" /> |

### Dashboard & Chat

| Training Dashboard | Chats |
| :---: | :---: |
| <img src="assets/15.png" width="150" /> | <img src="assets/16.png" width="180" /> |

### Profile & Settings

| Profile | Notifications | Log out |
| :---: | :---: | :---: |
| <img src="assets/18.png" width="180" /> | <img src="assets/19.png" width="180" /> | <img src="assets/20.png" width="180" /> |

---

## Possible Next Steps

- Connect the screens to a backend for real authentication, data and chat.
- Add workout detail and live workout session screens.
- Enable the premium subscription and payment flow.
- Add dark mode.
- Add localization (Arabic and English).

---

## Author

**Malak Ashraf Sayed**

[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/malakashraf17/fitness-app)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/malak-ashraf-924139427/)

---

<div align="center">

Designed and built with Flutter. If you like the project, give it a star.

</div>
