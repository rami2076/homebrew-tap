cask "moost" do
  version "2.2.1-macos"
  sha256 "6c235d165f329666655dd74fffb277d57de6fc799c367e80480ceb03295a2f47"

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
