class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.2.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.3/topoglyph-macos-x86_64"
    sha256 "a3bcdb810577ded41cec3f65c74cad5101a835f79a251f9813e57ffa5a57fe9d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.3/topoglyph-macos-aarch64"
    sha256 "463774e64a8d1955f03b9d685fd5ef56b8da11ca0f2cb91c3c55964948f4fb8d"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
