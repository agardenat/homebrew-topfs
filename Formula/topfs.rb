class Topfs < Formula
  desc "Live top-N biggest filesystem entries with tree display"
  homepage "https://github.com/agardenat/topfs"
  url "https://github.com/agardenat/topfs/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f86fb9321d7cd5b09d605a429d41eea0a016c7e887f8f0821222cbf3e594d96d"
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
