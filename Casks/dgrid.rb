cask "dgrid" do
  version "1.4.0"
  sha256 "7e6bfbc657f1faf190954276277ebb85fdcaa1adc66597858c2d5fc96a525cac"

  url "https://github.com/sschlesier/dgrid/releases/download/v#{version}/DGrid_#{version}_aarch64.dmg"

  name "DGrid"
  desc "Modern MongoDB GUI application"
  homepage "https://github.com/sschlesier/dgrid"

  app "DGrid.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DGrid.app"]
  end

  zap trash: [
    "~/.dgrid",
    "~/Library/Preferences/com.dgrid.app.plist",
  ]
end
