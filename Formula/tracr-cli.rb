class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://github.com/JoKeks2023/tracr"
  version "0.9.0"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.9.0/tracr-0.9.0-aarch64-apple-darwin.tar.gz"
  sha256 "809425fb75f9610db0ac132ffb343001105d101eec8ca36f9a33d4530fe4e037"
  license "AGPL-3.0-or-later"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tracr"
  end

  test do
    assert_match "tracr", shell_output("#{bin}/tracr --version")
  end
end
