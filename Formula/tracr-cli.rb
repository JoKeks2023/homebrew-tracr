class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.12.0"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.10.1/tracr-0.10.0-universal-apple-darwin.tar.gz"
  sha256 "27fcb5867cd166d2e4b71bb2e898df6d13a342da2a5a245454a6a29bc9c46b6c"
  license "AGPL-3.0-or-later"

  conflicts_with cask: "tracr"
  depends_on :macos

  def install
    bin.install "tracr"
  end

  test do
    assert_match "tracr", shell_output("#{bin}/tracr --version")
  end
end
