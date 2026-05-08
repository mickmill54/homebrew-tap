class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.10.1"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.10.1/dedupe-macos-arm64"
  sha256 "544eadbc64b30d9b59b9e872f58ada4a3e6ed8ea58bc4f0973d93778ef609547"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
