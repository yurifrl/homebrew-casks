cask "yurifrl-alt-tab" do
  version "0.2.2"
  sha256 "55d4f9028eaf948c67fb8078f2339a8c64b9bc493c0e0ed6eeb666c04742e0b3"
  auto_updates true

  url "https://github.com/yurifrl/alt-tab/releases/download/v#{version}/AltTab.dmg"
  name "AltTab"
  desc "Keyboard-driven window switcher"
  homepage "https://github.com/yurifrl/alt-tab"

  conflicts_with cask: "yurifrl-alt-tab@latest"
  conflicts_with cask: "yurifrl-alt-tab@nightly"
  depends_on macos: :monterey

  app "AltTab.app"

  zap trash: [
    "~/Library/Preferences/at.yuri.alt-tab.plist",
    "~/Library/Caches/at.yuri.alt-tab",
  ]
end
