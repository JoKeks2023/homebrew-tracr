cask "tracr" do
  version "0.10.1"
  sha256 "552264099947b4aa56794257d9c7f3142b80a09b2f145d8000c58897323a6d94"

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
