# Family Planner

Starter project for the Family Planner app. This repository contains a SwiftUI iOS
application targeting iOS 26 for both iPhone and iPad. The app uses Firebase for
authentication, Firestore for data, and integrates background refresh, push
notifications, and MapKit.

## Environment Setup
1. Install Xcode 16 or later.
2. Configure Firebase for each environment (Dev/Staging/Prod) and download the
   corresponding `GoogleService-Info.plist` files. Do **not** commit the files;
   place them in the project directory before building.
3. Supply API keys and App Check debug tokens using Xcode build settings or
   environment variables.
4. Run `Scripts/generate_info_plist.sh` via the build step to generate the
   environment-specific `Info.plist`.

## Feature Flags
Feature flags are controlled through `xcconfig` values. Update the flag values
per environment as needed.

## Firestore Rules
Firestore rules should enforce ownership checks and require
`request.appCheck.tokenValid()` for every request. See Firebase documentation for
further guidance.

## Testing
Run `xcodebuild -scheme "FamilyPlanner (Dev)" test` to execute all tests once the
project is configured. At least one test per suite is expected to pass.

