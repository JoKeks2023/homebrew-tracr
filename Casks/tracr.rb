cask "tracr" do
  version "0.12.0"
  sha256 "d835ef35081aee9d4428d959500b1a1a877caa9bd6bd2902c2a665863da1617a"

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
