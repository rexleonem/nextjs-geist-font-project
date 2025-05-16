# Afrikan Stories Flutter Blog App

This is a mobile-first Flutter app for Afrikan Stories that fetches and displays stories via the WordPress REST API. It includes AI-powered chat and text-to-speech features.

## Features

- Fetch posts, categories, authors, and tags from WordPress REST API
- Display latest stories, featured stories, categories as scrollable chips/tabs
- Individual story view with rich content rendering
- Modern UI with dark/light mode toggle, infinite scroll, story progress bar, text resize
- DeepSeek AI chat assistant with local query storage
- Text-to-speech with play/pause, speed and voice customization, background play
- Offline caching with Hive or SQLite, favorites for offline access
- Riverpod for state management and performance optimizations

## Setup

1. Install Flutter 3+ SDK: https://flutter.dev/docs/get-started/install
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run the app on your device or emulator:
   - `flutter run`

## Configuration

- WordPress API base URL: https://afrika.ng/wp-json/wp/v2/
- DeepSeek AI integration details (to be added)
- Text-to-Speech settings configurable in app settings

## Project Structure

- `lib/`
  - `screens/` - UI screens (Home, StoryView, AIChat, Favorites, Settings)
  - `widgets/` - Reusable widgets
  - `services/` - API and AI service integrations
  - `providers/` - Riverpod state management providers
  - `models/` - Data models for posts, categories, authors, etc.

## Future Enhancements

- User login with Firebase or Supabase
- Cloud sync for bookmarks and preferences
- Enhanced AI chat capabilities
