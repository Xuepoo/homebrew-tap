class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.3.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.5/topoglyph-macos-x86_64"
    sha256 "eae040a610cce889d333b09ed55f60bf623c05437eaa5d9c667a7e9f2a69a439"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.3.5/topoglyph-macos-aarch64"
    sha256 "fb29cbf281cb753704bc90262044ace41fe6a83d2cbdd93e824559bac2f13dda"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
