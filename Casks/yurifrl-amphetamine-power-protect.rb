cask "yurifrl-amphetamine-power-protect" do
  version :latest
  sha256 :no_check

  url "https://raw.githubusercontent.com/x74353/Amphetamine-Power-Protect/main/DMG/Power%20Protect%20for%20Amphetamine.dmg"
  name "Power Protect for Amphetamine"
  desc "Plugin that prevents Mac from sleeping while on power"
  homepage "https://github.com/x74353/Amphetamine-Power-Protect"

  # depends_on cask: "amphetamine"  # Amphetamine installed via Mac App Store

  # Manual installation required - this is a plugin for Amphetamine
  # Install by opening the DMG and following the instructions
  installer manual: "Power Protect for Amphetamine.dmg"
end
