cask "tracr" do
  version "0.9.0"
  sha256 "6048f1c2487fef680418cf97bc3fb9a8c8639f14b7fde86c7f6ea33501b726a1"

  url "https://github.com/JoKeks2023/tracr/releases/download/v#{version}/tracr-#{version}-aarch64-apple-darwin.zip"
  name "tracr"
  desc "Local development diary and time ledger"
  homepage "https://github.com/JoKeks2023/tracr"

  depends_on arch: :arm64
  depends_on :macos

  app "tracr.app"

  zap trash: "~/Library/Application Support/tracr"
end
