class Mactic < Formula
  desc "Send haptic waveforms and visualize multitouch input on MacBook trackpads"
  homepage "https://github.com/MatMercer/mactic"
  url "https://github.com/MatMercer/mactic/archive/refs/tags/v1.tar.gz"
  sha256 "b506ef261ad777fffc1e63bef32bce5f38e7397aa34328776c860b8b3a3a8e3d"
  license "Unlicense"

  depends_on :macos

  def install
    system "make"
    bin.install "mactic"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/mactic -h 2>&1", 0)
  end
end
