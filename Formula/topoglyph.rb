class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.3/topoglyph-macos-x86_64"
    sha256 "5a6844690f873a172821213929629a567852d8c1f0eb83b8e95e7f5dda00e190"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.3/topoglyph-macos-aarch64"
    sha256 "518d0a52b16caccda8a436511cb6da72b78dd9be352ed39ee7fe9946c36a23e4"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
