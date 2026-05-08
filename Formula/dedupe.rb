class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.10.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.10.0/dedupe-macos-arm64"
  sha256 "abf2986c4940a7e2418b9644e252a99e295498fb722edf95644828424f60fd3b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
