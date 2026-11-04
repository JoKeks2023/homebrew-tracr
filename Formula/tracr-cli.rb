class TracrCli < Formula
  desc "Local development diary and time ledger (command line)"
  homepage "https://tracr.jorisconrad.com/"
  version "0.11.1"
  url "https://github.com/JoKeks2023/tracr/releases/download/v0.10.1/tracr-0.10.0-universal-apple-darwin.tar.gz"
  sha256 "45a49351a6a25ceb4c2adfce66c31fa3dbc99624718381fd7b3ae3671128aca9"
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
