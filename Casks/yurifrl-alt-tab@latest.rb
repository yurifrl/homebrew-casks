cask "yurifrl-alt-tab@latest" do
  version :latest
  sha256 :no_check

  url "https://github.com/yurifrl/alt-tab/releases/latest/download/AltTab.dmg"
  name "AltTab"
  desc "Keyboard-driven window switcher (always the newest release)"
  homepage "https://github.com/yurifrl/alt-tab"

  conflicts_with cask: "yurifrl-alt-tab"
  depends_on macos: :monterey

  app "AltTab.app"

  zap trash: [
    "~/Library/Preferences/at.yuri.alt-tab.plist",
    "~/Library/Caches/at.yuri.alt-tab",
  ]
end
