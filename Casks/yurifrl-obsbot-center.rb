cask "yurifrl-obsbot-center" do
  version :latest
  sha256 :no_check

  url do
    "https://resource-cdn.obsbothk.com/download/obsbot-center/Obsbot_Center_OA_E_MacOS_Apple_2.0.13.28_release.dmg"
  end
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
