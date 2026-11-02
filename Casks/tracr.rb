cask "tracr" do
  version "0.11.0"
  sha256 "e32b83955a3313c199fc56709efbad07a326ccefb8e26f34939aba6d10dbabd2"

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
