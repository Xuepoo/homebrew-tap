class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.3.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.6/topoglyph-macos-x86_64"
    sha256 "a0faf791f390b95b3c28e45a7a77b24add041fbf25ca15fc1e4ffc134f7c6fd0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.6/topoglyph-macos-aarch64"
    sha256 "a84fbec39743dfc28ffe3f6b79a99d3ea1f9ee55eb4af4bc4aa89cea3322dcbb"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
