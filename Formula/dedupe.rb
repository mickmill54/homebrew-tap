class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.12.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.12.0/dedupe-macos-arm64"
  sha256 "770f9551fd554bcb8484b125c0c149d3371f40855f6f649c42a7288d633c9329"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
