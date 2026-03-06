cask "dgrid" do
  version "1.0.5"
  sha256 "599fd5e68dcd0a1d09b890ad990fd33199b0c9aabb805690dc6411791edd351d"

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
