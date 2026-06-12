class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "5.0.13"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.13/vectomancy-macos-x86_64"
    sha256 "50bca7b8f071ad2f71bf205e7ca8f0dba76a334d5c9f7f6936c12fcf5ae6d511"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.13/vectomancy-macos-aarch64"
    sha256 "798cf07ac64a8e94c747d73fa6080e7ab0a214f6a83451c2376976c4a49def36"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
