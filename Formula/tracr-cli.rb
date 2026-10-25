class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.9.1"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.9.1/tracr-0.9.1-aarch64-apple-darwin.tar.gz"
  sha256 "091c509c2b7f0e23b4ebadf85491d261d3c5972635ffd2ff9aa4d32dffbbcd80"
  license "AGPL-3.0-or-later"

  conflicts_with cask: "tracr"
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tracr"
  end

  test do
    assert_match "tracr", shell_output("#{bin}/tracr --version")
  end
end
