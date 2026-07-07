class Topfs < Formula
  desc "Live top-N biggest filesystem entries with tree display"
  homepage "https://github.com/agardenat/topfs"
  url "https://github.com/agardenat/topfs/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "8243201d44c7110a6e0177b91f38aa0a9b8c612b8959cbad7755b7262807d2d7"
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
