cask "yurifrl-alt-tab" do
  version "0.2.1"
  sha256 "31f9dc40c5fc170ebe7c0758243c30900ca1d99058f5b87301611096c529367c"
  auto_updates true

  url "https://github.com/yurifrl/alt-tab/releases/download/v#{version}/AltTab.dmg"
  name "AltTab"
  desc "Keyboard-driven window switcher"
  homepage "https://github.com/yurifrl/alt-tab"

  conflicts_with cask: "yurifrl-alt-tab@latest"
  depends_on macos: :monterey

  app "AltTab.app"

  zap trash: [
    "~/Library/Preferences/at.yuri.alt-tab.plist",
    "~/Library/Caches/at.yuri.alt-tab",
  ]
end
