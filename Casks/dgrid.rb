cask "dgrid" do
  version "0.4.1"
  sha256 "26e357a99255c84df104ec5502279f95b44b19075827cee3f590ca2cbd7bd1ec"

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
