class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.9.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.9.0/dedupe-macos-arm64"
  sha256 "c0764b05eb97e89422d1eb4a84ddb355d017f9d19b4a62f1a1fa59f5cf0a4741"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
