class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.10.1"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.10.1/tracr-0.10.0-universal-apple-darwin.tar.gz"
  sha256 "93f8a0fb652a69a16fb6169e19ca7a1e51ed6677d891aeddc39d6e6f0e86b0fa"
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
