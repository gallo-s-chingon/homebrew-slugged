class Slugged < Formula
  desc "Convert filenames to slug format: lowercase alphanumeric with single delimiters"
  homepage "https://github.com/gallo-s-chingon/slugged"
  url "https://github.com/gallo-s-chingon/slugged/archive/refs/tags/v0.1b.tar.gz"
  sha256 "588a9f85c49b489afc5655848fbb0ec91277ab7c057c363a715ccc3c179b65a2"
  license "MIT"

  def install
    bin.install "slugged.sh" => "slugged"
  end

  test do
    assert_equal "test-file", shell_output("#{bin}/slugged 'test file'").strip
  end
end
