class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.3.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.4/topoglyph-macos-x86_64"
    sha256 "dde570edc5557e841fb5587ffde2f496f70d36029960b94915fb38014f9f4160"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.4/topoglyph-macos-aarch64"
    sha256 "08ac679b9a764596215423073d6218dc8c85b7b43a68daef270e17f19d42d1ac"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
