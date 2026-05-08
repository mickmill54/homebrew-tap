class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.13.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.13.0/dedupe-macos-arm64"
  sha256 "df7857db2c8979767e2e568d98415480ff1c589c9523060a4884d3da74f0524e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
