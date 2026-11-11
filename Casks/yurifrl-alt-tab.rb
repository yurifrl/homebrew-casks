cask "yurifrl-alt-tab" do
  version "0.1.0"
  sha256 "c957a736106caa169887492ec4d7dd4e64f8800972f33ee424ac9bdb31921c99"

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
