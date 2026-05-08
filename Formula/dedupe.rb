class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.8.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.8.0/dedupe-macos-arm64"
  sha256 "c73faee70c1495a7ab82a0bbd47a16ea2e24d530cdb2f649638c990e827f1684"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
