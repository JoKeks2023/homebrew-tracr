cask "tracr" do
  version "0.9.1"
  sha256 "cddcaa4a77836c50cfcc8864838322964703d8bacb7c88ae41cc10af7998d29d"

  url "https://github.com/JoKeks2023/tracr/releases/download/v#{version}/tracr-#{version}-aarch64.dmg"
  name "tracr"
  desc "Local development diary and time ledger"
  homepage "https://tracr.jorisconrad.com/"

  conflicts_with formula: "tracr-cli"
  depends_on arch: :arm64
  depends_on :macos

  app "tracr.app"
  # The command line tool ships inside the app.
  binary "#{appdir}/tracr.app/Contents/MacOS/tracr"

  zap trash: "~/Library/Application Support/tracr"
end
