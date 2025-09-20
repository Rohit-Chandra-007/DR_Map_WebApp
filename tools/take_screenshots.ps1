# Helper script: take_screenshots.ps1
# This script contains instructions and example commands to capture screenshots
# of the Flutter app in light and dark themes on Windows (PowerShell).

Write-Host "Screenshot capture helper for riverpod_test"
Write-Host ""
Write-Host "1) Run the app in the target device/emulator. Example:"
Write-Host "   flutter run -d windows    # or -d chrome, -d emulator-5554"
Write-Host ""
Write-Host "2) For Android emulator or device, use adb to capture the screen:" 
Write-Host "   adb exec-out screencap -p > .\\assets\\screenshots\\screenshot_light.png"
Write-Host "   # Toggle your theme in the app, then run:" 
Write-Host "   adb exec-out screencap -p > .\\assets\\screenshots\\screenshot_dark.png"
Write-Host ""
Write-Host "3) For Windows desktop (if built), use Snipping Tool or PrintScreen and paste into an image editor, then save to assets/screenshots/."
Write-Host ""
Write-Host "4) For web (Chrome), open DevTools › Capture screenshot or use OS-level screenshot tools and save to assets/screenshots/."
Write-Host ""
Write-Host "Notes:"
Write-Host "- After adding real screenshots to assets/screenshots/, update pubspec.yaml if you need them bundled in app assets."
Write-Host "- The project contains placeholder PNGs. Replace them with real captures for accurate documentation."}】