class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.4.0/topoglyph-macos-x86_64"
    sha256 "7c46f695f63bd6acf1a5638ca24462545931f1e3a236ca75b06a3362610ba268"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.4.0/topoglyph-macos-aarch64"
    sha256 "18eed1ebbed0cf8bbbc07a94719c047248f638767bbfcd44dfe767957be38c6c"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
