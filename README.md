# homebrew-tap

rami2076 のアプリ用 Homebrew tap。

## Moost

```bash
brew install --cask rami2076/tap/moost
```

Moost は現状 ad-hoc 署名のため、Gatekeeper に止められた場合は
`xattr -dr com.apple.quarantine /Applications/Moost.app` を実行してください。

formula は [moost](https://github.com/rami2076/moost) のリリースワークフローが自動更新します。
