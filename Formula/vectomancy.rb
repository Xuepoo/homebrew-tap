class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "6.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.0.1/vectomancy-macos-x86_64"
    sha256 "557f973bc5d12934489d16f80dbcf2b8e01b6fd16ebe58d2226523fb03c0b309"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.0.1/vectomancy-macos-aarch64"
    sha256 "e9164d716aa206eb87480d971fda1ed942f27f49d28b48daa9fc295a013ebfd9"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
