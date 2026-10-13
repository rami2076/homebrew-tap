cask "moost" do
  version "2.0.1-macos"
  sha256 "57da39869c81a7f9c6f5631d62f18a1ef46c8cf8dcae561814f221be7a85a357"

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
