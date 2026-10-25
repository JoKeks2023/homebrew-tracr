cask "tracr" do
  version "0.9.2"
  sha256 "bcbcee6af8861b3b9c336655431e47add8a2e8c58fa6786879587489a782723f"

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
