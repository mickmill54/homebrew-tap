class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.11.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.11.0/dedupe-macos-arm64"
  sha256 "9d321ba5249c2667d835999e9848d1fd1d9630366e5f5da203d21c0475755803"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
