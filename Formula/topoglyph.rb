class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.2/topoglyph-macos-x86_64"
    sha256 "71246e6d965e90ca089b601a50c804aa2e5ece7e6bf8d03b43a0e5adb219c7cf"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.2.2/topoglyph-macos-aarch64"
    sha256 "63b779c79d3f91b6cae0096075e956859bb6bf786317bcf9e1908c2502c517f6"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
