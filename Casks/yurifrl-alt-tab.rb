cask "yurifrl-alt-tab" do
  version "0.3.0"
  sha256 "3c7fe19c95290a6094819f556a8a7d187e5832c28a288bbb95227474984f8888"
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
