class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.6.1"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.6.1/dedupe-macos-arm64"
  sha256 "6632c1c8ef16970e92bc5b94ebb365acb8a7a24773010d94e6fd1789afff3f1f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
