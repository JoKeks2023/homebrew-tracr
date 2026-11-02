class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.11.0"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.10.1/tracr-0.10.0-universal-apple-darwin.tar.gz"
  sha256 "5918e9a9f7f1df51f20bc0793a91e8fc68334dec2b27ebb34bb49ddfdb9ef35d"
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
