cask "moost" do
  version "1.10.0"
  sha256 "340f283a58ba686deb8c88b9f679dc1bca65173cbf50aebd468ad26692389f58"

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
