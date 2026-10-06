class Topfs < Formula
  desc "Live top-N biggest filesystem entries with tree display"
  homepage "https://github.com/agardenat/topfs"
  url "https://github.com/agardenat/topfs/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "ce214b464a3132ea4d880ad7727bceac362e7d7526ea76dd4dac7ee8277f5d26"
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
