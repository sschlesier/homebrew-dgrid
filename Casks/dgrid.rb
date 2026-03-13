cask "dgrid" do
  version "1.1.1"
  sha256 "623a31eaa2f95492fc86087db05beb803dc0083d9a056861861727f9e287559a"

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
