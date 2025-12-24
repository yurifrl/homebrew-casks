cask "yurifrl-obsbot-center" do
  version :latest
  sha256 :no_check

  url "https://resource-cdn.obsbothk.com/202512241003/c87629316e32a62d7c2d7bac2dfc4b05/download/obsbot-center/Obsbot_Center_OA_E_MacOS_Apple_2.0.13.28_release.dmg"
  name "Obsbot Center"
  desc "Control center for Obsbot webcams"
  homepage "https://www.obsbot.com/"

  app "OBSBOT_Center.app"

  zap trash: [
    "~/Library/Application Support/Obsbot Center",
    "~/Library/Caches/com.obsbot.center",
    "~/Library/Preferences/com.obsbot.center.plist",
  ]
end
