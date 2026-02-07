cask "dgrid" do
  version "0.1.0"

  on_arm do
    sha256 "REPLACE_WITH_ARM64_SHA256"
    url "https://github.com/sschlesier/dgrid/releases/download/v#{version}/DGrid-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "REPLACE_WITH_X64_SHA256"
    url "https://github.com/sschlesier/dgrid/releases/download/v#{version}/DGrid-#{version}-x64.dmg"
  end

  name "DGrid"
  desc "Modern MongoDB GUI application"
  homepage "https://github.com/sschlesier/dgrid"

  app "DGrid.app"

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
