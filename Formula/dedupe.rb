class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.9.1"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.9.1/dedupe-macos-arm64"
  sha256 "6208178c1700efa1ed8da878de4160bae1c7ea13d3dc170897646c47aa7bea43"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
