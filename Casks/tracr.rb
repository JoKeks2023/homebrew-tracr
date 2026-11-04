cask "tracr" do
  version "0.11.1"
  sha256 "06ade46003eaa348967bdec2821aa0a9aafcb32a27c3162ecc88617d9c74d4b7"

  url "https://github.com/JoKeks2023/tracr/releases/download/v#{version}/tracr-#{version}-universal.dmg"
  name "tracr"
  desc "Local development diary and time ledger"
  homepage "https://tracr.jorisconrad.com/"

  depends_on :macos

  app "tracr.app"
  # The command line tool ships inside the app.
  binary "#{appdir}/tracr.app/Contents/MacOS/tracr"

  zap trash: "~/Library/Application Support/tracr"
end
