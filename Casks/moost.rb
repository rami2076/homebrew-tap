cask "moost" do
  version "2.2.0-macos"
  sha256 "0f3dce91a51be54912701604428b3a4e3899866a31ee98617a0f84eb60c7d3f3"

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
