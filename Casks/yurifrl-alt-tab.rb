cask "yurifrl-alt-tab" do
  version "0.2.0"
  sha256 "e0cc9c3ae9b557cbebe6d2857f0a7ad5403f80c48cbdf1ac7c05fce152c83322"
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
