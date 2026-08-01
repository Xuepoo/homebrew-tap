class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.1/topoglyph-macos-x86_64"
    sha256 "53f1a8f56e9781e1996c33d9785d4cd330d00555016f3030ef1aff953fea61c4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.1/topoglyph-macos-aarch64"
    sha256 "2da6b05a40febd20baa3d94544e09ec4c2c92d4d5b84cf9f4f765393fed6e2c1"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
