cask "yurifrl-micsync" do
  version "1.0.5"
  sha256 "9dfce782a2653d80ee45f21946509cc364e2851fac063c4b11a238a6a841ec0c"

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
