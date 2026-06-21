cask "dgrid" do
  version "1.6.0"
  sha256 "408c44793ad363fd23ed5385654b7bd93aa43543b780a23d7037415578d14088"

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
