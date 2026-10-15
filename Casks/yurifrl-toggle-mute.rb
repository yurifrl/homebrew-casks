cask "yurifrl-toggle-mute" do
  version "1.6"
  sha256 "61d8c8a5464b5a16334806b2d411f9144ce273320124b832769cb82fed9ef21e"

  url "https://github.com/yurifrl/toggleMute/releases/download/v#{version}/toggleMute-#{version}.dmg"
  name "toggleMute"
  desc "Menu bar app to mute/unmute the default microphone"
  homepage "https://github.com/yurifrl/toggleMute"

  app "toggleMute.app"

  zap trash: [
    "~/Library/Application Support/com.toggleMute",
    "~/Library/Caches/com.toggleMute",
    "~/Library/Preferences/com.toggleMute.plist",
  ]
end
