cask "moost" do
  version "2.3.0-macos"
  sha256 "5740d69104d040ed778ffad9d4f2f9613e5c0eca8b947bbedac98b91548ab1bb"

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
