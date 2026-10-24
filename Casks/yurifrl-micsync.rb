cask "yurifrl-micsync" do
  version "1.0.4"
  sha256 "2eb347cdfaa3de8bcdc4ec52210bdee893bb6c604826a07ba97a297da609391f"

  url "https://github.com/yurifrl/MicSync/releases/download/v#{version}/MicSync-#{version}.dmg"
  name "MicSync"
  desc "Menu bar app that syncs mic mute state across Google Meet and Slack huddles"
  homepage "https://github.com/yurifrl/MicSync"

  depends_on macos: :ventura

  app "MicSync.app"

  zap trash: [
    "~/Library/Application Support/com.yurifrl.micsync",
    "~/Library/Caches/com.yurifrl.micsync",
    "~/Library/Preferences/com.yurifrl.micsync.plist",
  ]
end
