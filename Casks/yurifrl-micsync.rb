cask "yurifrl-micsync" do
  version "1.0.1"
  sha256 "c2762bbc20d1984b3d65b706eaf1d3e788d56c097a15115bb021537b2e2c69cf"

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
