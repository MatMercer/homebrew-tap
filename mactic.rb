class Mactic < Formula
  desc "Send haptic waveforms and visualize multitouch input on MacBook trackpads"
  homepage "https://github.com/MatMercer/mactic"
  url "https://github.com/MatMercer/mactic/releases/download/v1.2/mactic-macos.tar.gz"
  sha256 "4497f43db75376a957b60277869908ca6d6521b37d3bd6bf4b14040a3dd32f10"
  license "Unlicense"

  depends_on :macos

  def install
    bin.install "mactic"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/mactic -h 2>&1", 0)
  end
end
