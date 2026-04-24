cask "dgrid" do
  version "1.4.1"
  sha256 "30b377ac07b8cc50f26131a0ec81991a8cc7e64e2297d95d61f3039fe01f8fe9"

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
