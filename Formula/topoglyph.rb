class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.0/topoglyph-macos-x86_64"
    sha256 "6ba54de21e243d47fa0af1460494d4f8598ba899c3bc0edccdfb8b0f0e1513d1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.0/topoglyph-macos-aarch64"
    sha256 "c3f146421b52b591a135fb5cd7c818a912bc413bdf988695b1e57838b0cf03d8"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
