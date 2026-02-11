cask "dgrid" do
  version "0.4.0"
  sha256 "ba3d59a7feae0e4725b87283bf62b159b1f56cf4a3922e4b214240762526af5e"

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
