class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.10.0"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.10.0/tracr-0.10.0-universal-apple-darwin.tar.gz"
  sha256 "d54aff2707ab9c5f7cf2a56bd5c7f2cd74465c4d563e0d64a200a1025e0712d0"
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
