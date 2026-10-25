class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.9.2"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.9.2/tracr-0.9.2-universal-apple-darwin.tar.gz"
  sha256 "4569a08c7eed452021e0e700679d73c4e9251df9016de8bcba99030c080d344f"
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
