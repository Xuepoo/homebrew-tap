class Topoglyph < Formula
  desc "Topology-to-glyph text-art rendering engine"
  homepage "https://github.com/Xuepoo/topoglyph"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.1.0/topoglyph-macos-x86_64"
    sha256 "3a0659fe881b96e6cb9bdbdfa3a06f225468aefdebc6d5d8123e8fc63c54a302"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/topoglyph/releases/download/v0.1.0/topoglyph-macos-aarch64"
    sha256 "60c210146985495eb49a656c3e8f8804157788e12208cab982c7307517e869e0"
  end

  def install
    bin.install "topoglyph-macos-x86_64" => "topoglyph" if Hardware::CPU.intel?
    bin.install "topoglyph-macos-aarch64" => "topoglyph" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/topoglyph", "--version"
  end
end
