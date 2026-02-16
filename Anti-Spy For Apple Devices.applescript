# Disable Siri
defaults write com.apple.assistant.support "DeviceId" -string ""
defaults write com.apple.assistant.support "AssistantEnabled" -bool false

# Disable Siri suggestions in Spotlight
defaults write com.apple.Spotlight "suggestionsEnabled" -bool false

# Disable Analytics & improve Mac experience
sudo defaults write /Library/Preferences/com.apple.ApplePushService "AllowRemoteUserNotification" -bool false
sudo defaults write /Library/Preferences/com.apple.Safari "SendDoNotTrackHTTPHeader" -bool true

# Disable personalized ads
defaults write com.apple.AdLib "allowApplePersonalizedAdvertising" -bool false

# Turn off iCloud Analytics
defaults write com.apple.SubmissionPolicy "AutoSubmit" -bool false

# Disable Siri & Dictation (privacy-focused)
sudo defaults write /System/Library/LaunchDaemons/com.apple.speech.speechsynthesisd.plist Disabled -bool true

# Disable location services (if you don't need location)
sudo defaults write /var/db/Location\ Services/Library/Preferences/ByHost/com.apple.locationd "LocationServicesEnabled" -bool false

# Disable Analytics Data Sharing
sudo defaults write /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist AutoSubmit -bool false

# Disable iCloud syncing (if desired)
# (Be cautious: this affects data syncing)
# defaults write NSGlobalDomain NSUbiquitousContainers -dict-add

echo "Some privacy settings have been applied. You may need to restart your Mac for all changes to take effect."