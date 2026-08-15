cask "moost" do
  version "1.9.0"
  sha256 "b5cbd713cab90a28f4ef9389863113c7dd7cce7bb172187d95a301748bbcbdcc"

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
