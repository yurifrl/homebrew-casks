cask "yurifrl-toggle-mute" do
  version "1.6.1"
  sha256 "47140269752e12305a1d69185ecd10ba5421df1c26d5b525e0245e78456f895f"

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
