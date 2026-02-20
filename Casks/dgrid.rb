cask "dgrid" do
  version "0.6.0"
  sha256 "b4fd29f937bfdf3fef1479a9370ae8c7baa0b8a3f1827365305981040b2ad19f"

  url "https://github.com/sschlesier/dgrid/releases/download/v#{version}/DGrid-#{version}-arm64.dmg"

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

  caveats <<~EOS
    DGrid has been installed!

    Launch DGrid from your Applications folder or Spotlight.
    The app runs as a menu bar item and opens your browser to:
      http://127.0.0.1:3001
  EOS
end
