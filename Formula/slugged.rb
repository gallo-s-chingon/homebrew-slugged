class Slugged < Formula
  desc "Convert filenames to slug format: lowercase alphanumeric with single delimiters"
  homepage "https://github.com/gallo-s-chingon/slugged"
  url "https://github.com/gallo-s-chingon/slugged/archive/refs/tags/v0.1b.tar.gz"
  sha256 "a5064b065124bb877fdf54132a987dd39d2ad8557c8de8814c11e235f4ea5384"
  license "MIT"

  def install
    bin.install "slugged.sh" => "slugged"
  end

  test do
    assert_equal "test-file", shell_output("#{bin}/slugged 'test file'").strip
  end
end
