class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "7.1.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.5/vectomancy-macos-x86_64"
    sha256 "6e60e149cec1ed19ef379db8a95c7351dfbbfea2014e959c2de6766b2288131c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.5/vectomancy-macos-aarch64"
    sha256 "ac785fed1c4f84d50ce386842ce3875e2069bf1d54180cedecc9da40b6487e5e"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
