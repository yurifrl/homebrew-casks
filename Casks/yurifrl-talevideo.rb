cask "yurifrl-talevideo" do
  version "2.2.14"
  sha256 :no_check

  url "https://app-assets.talevideo.com/Talevideo-#{version}-arm64.dmg"
  name "Tale Video"
  desc "Video editor by Tale Video"
  homepage "https://talevideo.com/"

  depends_on arch: :arm64

  app "Talevideo.app"

  zap trash: [
    "~/Library/Application Support/Talevideo",
    "~/Library/Caches/com.talevideo.*",
    "~/Library/Preferences/com.talevideo.*.plist",
  ]
end
