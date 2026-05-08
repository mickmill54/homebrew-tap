class Dedupe < Formula
  desc "Find and quarantine duplicate image files for slideshow curation"
  homepage "https://github.com/mickmill54/image-deduper"
  version "0.7.0"
  license "MIT"

  url "https://github.com/mickmill54/image-deduper/releases/download/v0.7.0/dedupe-macos-arm64"
  sha256 "2cdf935fa0674620023216f8d4ff723e3bd88eb891f054b87d36498fbf4e42cb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dedupe-macos-arm64" => "dedupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupe --version")
  end
end
