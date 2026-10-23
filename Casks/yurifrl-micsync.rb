cask "yurifrl-micsync" do
  version "1.0.0"
  sha256 "e285f492f73634083d6708ef190b820e96a492270be94cbc738c1ae7e85dde70"

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
