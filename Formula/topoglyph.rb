class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.3.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.2/topoglyph-macos-x86_64"
    sha256 "bbfc84e35e4cde0d3e6357c21334cfec519ba54b4550df0a18db49aac7e0d971"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.2/topoglyph-macos-aarch64"
    sha256 "1e37f8ced330dd14730536604840dcc850d433237375b7c1f3138b0fdfeb5862"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
