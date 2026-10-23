cask "yurifrl-micsync" do
  version "1.0.2"
  sha256 "c33aadfcbe30daf76954773f4b502e8fa2553a01a40cd71959405f200b8fe3bd"

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
