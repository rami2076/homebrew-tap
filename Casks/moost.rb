cask "moost" do
  version "1.9.1"
  sha256 "e59cddb9b1bdf6e192d02ccbf4c4316f2502e54611931d33c5f75b76255441a8"

  url "https://github.com/rami2076/moost/releases/download/v#{version}/Moost-#{version}.dmg"
  name "Moost"
  desc "Attach memos to AI coding agent sessions and resume them from the system tray"
  homepage "https://github.com/rami2076/moost"

  app "Moost.app"
  # Moost.app に同梱した MCP サーバーを CLI からも直接叩けるように
  # symlink する（Issue #45）。設定画面から連携登録する際は、
  # インストール先アプリの中の実体パスを直接指定するため
  # この symlink 自体は経由しない
  binary "#{appdir}/Moost.app/Contents/Resources/moost-mcp"

  caveats <<~EOS
    Moost is currently ad-hoc signed. If Gatekeeper blocks the first launch,
    remove the quarantine attribute:

      xattr -dr com.apple.quarantine /Applications/Moost.app
  EOS
end
