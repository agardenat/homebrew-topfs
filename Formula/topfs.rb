class Topfs < Formula
  desc "Live top-N biggest filesystem entries with tree display"
  homepage "https://github.com/agardenat/topfs"
  url "https://github.com/agardenat/topfs/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "e35fe309b51ceff7616630289103f95ef31a48ed1eac65809a94c0b2955745ac"
  license "Apache-2.0"
  head "https://github.com/agardenat/topfs.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "topfs", shell_output("#{bin}/topfs --version")
  end
end
