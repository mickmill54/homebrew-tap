class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.6.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.6.0/dedupe-macos-arm64"
  sha256 "0fd0fbc0258e001a5b8045a8e0907052cf7f0e87958514db4ac1fd3ba956a567"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
