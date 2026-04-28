# ZaikoXAU Android

Aplikasi Android **WebView wrapper** ringan (~3 MB) untuk dashboard scalping ZaikoXAU.
Built menggunakan AI agent (Cascade / Windsurf) — Kotlin, AndroidX, Material3.

![tech](https://img.shields.io/badge/Kotlin-2.0-purple) ![tech](https://img.shields.io/badge/minSdk-24-green) ![tech](https://img.shields.io/badge/size-~3MB-lightgrey)

## Features

- WebView fullscreen → akses ZaikoXAU dashboard di Android
- Pull-to-refresh (swipe ke bawah untuk reload)
- Hardware back button → navigasi balik webview
- External link (TradingView dll) buka di browser
- Dark theme native + status bar matching
- Adaptive launcher icon (Material You)
- Auto-build APK via GitHub Actions

## Build APK (tanpa install Android Studio)

1. Push repo ini ke GitHub
2. Tab **Actions** → workflow **Build APK** auto-jalan
3. Setelah selesai (~5 menit), APK ada di:
   - **Artifacts** tab di run page (download zip), atau
   - **Releases** page (auto-publish setiap push ke main)

## Build local (kalau punya Android Studio)

```bash
./gradlew assembleDebug
# Output: app/build/outputs/apk/debug/app-debug.apk
```

## Konfigurasi URL web

Edit `app/build.gradle.kts` baris 18:

```kotlin
buildConfigField("String", "WEB_URL", "\"https://USERNAME-zaikoxau.hf.space\"")
```

Ganti dengan URL ZaikoXAU kamu (Hugging Face Space / Render / domain sendiri).

## Install di Android

1. Download `ZaikoXAU-debug.apk` dari Releases
2. Settings → **Install unknown apps** → izinkan untuk browser/file manager
3. Buka APK → Install
4. Buka aplikasi **ZaikoXAU** dari home screen

## Stack

- Kotlin 2.0
- Android Gradle Plugin 8.5.2
- Min SDK 24 (Android 7.0+)
- Target SDK 34 (Android 14)
- AndroidX WebKit, Material3, SwipeRefreshLayout

## License

MIT
