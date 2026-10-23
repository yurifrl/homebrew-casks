cask "yurifrl-micsync" do
  version "1.0.3"
  sha256 "33d41daeba1470043a9f14e040964f2b8172689211e5142a86e4eda3f5c1fb46"

  url "https://github.com/yurifrl/MicSync/releases/download/v#{version}/MicSync-#{version}.dmg"
  name "MicSync"
  desc "Menu bar app that syncs mic mute state across Google Meet and Slack huddles"
  homepage "https://github.com/yurifrl/MicSync"

  app "MicSync.app"

  zap trash: [
    "~/Library/Preferences/com.yurifrl.micsync.plist",
    "~/Library/Application Support/com.yurifrl.micsync",
    "~/Library/Caches/com.yurifrl.micsync",
  ]
end
