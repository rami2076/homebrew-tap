cask "moost" do
  version "2.3.1-macos"
  sha256 "af962cb5a3e198ffa7d97298ebc7bf44c45b0e0668cb94ad0cf4d171e2550b2c"

  url "https://github.com/rami2076/moost/releases/download/v#{version}/Moost-#{version}.dmg"
  name "Moost"
  desc "Attach memos to AI coding agent sessions and resume them from the system tray"
  homepage "https://github.com/rami2076/moost"

  app "Moost.app"
  # MoostApp は MCP サーバー内蔵の単一バイナリ。
  # moost mcp / moost --version を CLI から使えるようにする
  binary "#{appdir}/Moost.app/Contents/MacOS/MoostApp", target: "moost"

  caveats <<~EOS
    Moost is currently ad-hoc signed. If Gatekeeper blocks the first launch,
    remove the quarantine attribute:

      xattr -dr com.apple.quarantine /Applications/Moost.app
  EOS
end
